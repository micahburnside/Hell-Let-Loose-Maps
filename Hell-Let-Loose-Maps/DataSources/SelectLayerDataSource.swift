//
//  SelectLayerDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/16/22.
//

import Foundation
import UIKit

class SelectLayerDataSource: NSObject {
    private var layerTypes = MapsListDictionary().carentanStrongpointsDictionary
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
        switch section {
        case 0: return "\(String(describing: ZoneTableViewSection.zone1))"
        case 1: return "\(String(describing: ZoneTableViewSection.zone2))"
        case 2: return "\(String(describing: ZoneTableViewSection.zone3))"
        case 3: return "\(String(describing: ZoneTableViewSection.zone4))"
        case 4: return "\(String(describing: ZoneTableViewSection.zone5))"
        default:
            break
        }
        print("\(section.description)")
        return section.description
    }
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
        view.backgroundColor = .black
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textColor = .white
        title.text = "Layer Selection" // need array of strings
        view.addSubview(title)
        title.textAlignment = .justified
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
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return ZoneTableViewSection.allCases.count
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.keys.count
        
//        [[]]
        
//        switch section {
//        case 0: return
//        }
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
        
        // UserDefaults
        if (UserDefaults.standard.object(forKey: "switchState") == nil)
           {
              switchControl.setOn(true, animated: true)

            }
            else
             {
                switchControl.setOn(false, animated: true)
             }
             switchControl.tag = indexPath.row
        switchControl.addTarget(self, action: #selector(switchChanged(_:)), for: .valueChanged)
        
        return cell
    }
    
    @objc func switchChanged(_ switchState: UISwitch) {
        if switchState.isOn {
            UserDefaults.standard.set(true, forKey: "switchState")
            } else {
                UserDefaults.standard.set(false, forKey: "switchState")
            }
        
//        self.tableView.reloadData()
     }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        let tag = sender.tag
        if let cell = self.tableView.cellForRow(at: IndexPath(row: tag, section: 0)) {
            if let toggleSwitch = cell.viewWithTag(tag) as? UISwitch {
//                if toggleSwitch == cell.viewWithTag(0)
//                    let switch0 = toggleSwitch
//                } else if toggleSwitch == cell.viewWithTag(1) {
//                    let switch1 = toggleSwitch
//                } else if toggleSwitch == cell.viewWithTag(2) {
//                    let switch3 = toggleSwitch
                    
//                }
//                toggleSwitch.isOn = !toggleSwitch.isOn

            }
        }
        
        switch sender.tag{
//            case 0:
//            print("\(sender.tag)")
//            if sender.isOn {
//                self.updateMapDelegate?.loadStrongpointsLayer()
//            } else {
//                self.updateMapDelegate?.loadBaseLayer()
//            }
//            break
//            case 1:
//            print("\(sender.tag)")
//            if sender.isOn {
//                self.updateMapDelegate?.loadTACLayer()
//            }
//            break
        case 0:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint1()
        } else {
            self.updateMapDelegate?.removeStrongpoint()
        }
        break
        case 1:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint2()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 2:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint3()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 3:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint4()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 4:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint5()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 5:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint6()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 6:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint7()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 7:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint8()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 8:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint9()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 9:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint10()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 10:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint11()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 11:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint12()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 12:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint13()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 13:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint14()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        case 14:
        print("\(sender.tag)")
        if sender.isOn {
            self.updateMapDelegate?.loadStrongpoint15()
        } else {
            self.updateMapDelegate?.loadBaseLayer()
        }
        break
        default:
            self.updateMapDelegate?.loadBaseLayer()
        }
    }
}

