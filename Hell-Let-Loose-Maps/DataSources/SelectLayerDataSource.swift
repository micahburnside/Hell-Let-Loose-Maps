//
//  SelectLayerDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/16/22.
//

import Foundation
import UIKit

class SelectLayerDataSource: NSObject {
    private var layerTypes = MapsListDictionary().layerTypesDictionary
    var updateMapDelegate: UpdateMapDelegate?
    var delegate: DataSourceDelegate?
    @IBOutlet weak var tableView: UITableView!
    private var keys = Array<String>()

    func setup(dataSourceDelegate: DataSourceDelegate) {
        self.delegate = dataSourceDelegate
        self.tableView.register(UINib(nibName: "SelectLayerTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectLayerTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
        self.tableView.reloadData()
    }
}

extension SelectLayerDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectLayerTableViewCell", for: indexPath) as! SelectLayerTableViewCell
        }
    }

extension SelectLayerDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let selectViewTableView = UIView()
        if section == 0 {
            selectViewTableView.backgroundColor = .red
            selectViewTableView.tintColor = .white
            selectViewTableView.largeContentTitle = "Toggle Layer"

        }

        return selectViewTableView
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            cell.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
                cell.transform = CGAffineTransform.identity
            })
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectLayerTableViewCell", for: indexPath) as! SelectLayerTableViewCell
        let key = keys[indexPath.row]
        let switchControl = UISwitch()
        switchControl.tag = indexPath.row
        switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        cell.accessoryView = switchControl
        cell.primaryText = "\(key)"
        cell.secondaryText = "\(self.layerTypes[key] ?? "")"
        cell.backgroundColor = .black

        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        
//        let switchControl = UISwitch()
//        let switchControl.viewWithTag(0) = sender0
//        let sender1 = switchControl.viewWithTag(1)
//        let sender2 = switchControl.viewWithTag(2)
        switch sender.tag{
            case 0:
            if sender.isOn {
                self.updateMapDelegate?.loadStrongpointsLayer()

            } else {
                if sender.isOn {
                    self.updateMapDelegate?.loadTACLayer()
                    sender.isOn = false
                }
                // remove whatever is added from above
                self.updateMapDelegate?.loadBaseLayer()
            }
            break
            case 1:
            // same here
            self.updateMapDelegate?.loadTACLayer()
            break
        default:
            
            // same here
            
            self.updateMapDelegate?.loadTACLayer()

        }
    }
}

