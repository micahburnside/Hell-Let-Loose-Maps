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
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Section \(section)"
//    }
//
//    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let selectViewTableView = UIView()
//        if section == 0 {
//            selectViewTableView.backgroundColor = .red
//            selectViewTableView.tintColor = .white
//            selectViewTableView.largeContentTitle = "Toggle Layer"
//
//        }
//
//        return selectViewTableView
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.textColor = .white
        title.text = "Test"
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
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
//        switchControl.tag = 000089998
        switchControl.tag = indexPath.row
        switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        cell.accessoryView = switchControl
        cell.primaryText = "\(key)"
        cell.secondaryText = "\(self.layerTypes[key] ?? "")"
        cell.backgroundColor = .black

        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        let tag = sender.tag == 0 ? 1 : 0
        if let cell = self.tableView.cellForRow(at: IndexPath(row: tag, section: 0)) {
            if let toggleSwitch = cell.viewWithTag(tag) as? UISwitch {
//                if toggleSwitch == cell.viewWithTag(0)
//                    let switch0 = toggleSwitch
//                } else if toggleSwitch == cell.viewWithTag(1) {
//                    let switch1 = toggleSwitch
//                } else if toggleSwitch == cell.viewWithTag(2) {
//                    let switch3 = toggleSwitch
                    
//                }
                toggleSwitch.isOn = !toggleSwitch.isOn

            }
        }
        
        switch sender.tag{
            case 0:
            print("\(sender.tag)")
            if sender.isOn {
                self.updateMapDelegate?.loadStrongpointsLayer()
            } else {
                self.updateMapDelegate?.loadBaseLayer()
            }
            break
            case 1:
            print("\(sender.tag)")
            if sender.isOn {
                self.updateMapDelegate?.loadTACLayer()
            }
            break
        default:
            self.updateMapDelegate?.loadBaseLayer()
        }
    }
}

