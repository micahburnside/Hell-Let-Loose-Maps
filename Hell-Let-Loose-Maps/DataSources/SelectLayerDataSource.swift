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
    @objc func handleToggleAction(sender: UISwitch){
        if sender.isOn {
            print("Turned on")
        }
        else{
            print("Turned off")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectLayerTableViewCell", for: indexPath) as! SelectLayerTableViewCell
        }
    }

extension SelectLayerDataSource: UITableViewDataSource {
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

        switch sender.tag{
                case 0:
            self.updateMapDelegate?.loadStrongpointsLayer()
                case 1:
            self.updateMapDelegate?.loadTACLayer()

        default:
            self.updateMapDelegate?.loadTACLayer()

        }
    }
}

