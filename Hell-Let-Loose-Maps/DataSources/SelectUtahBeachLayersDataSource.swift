//
//  SelectUtahBeachLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectUtahBeachLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().UtahBeachStrongpointsDictionary
var updateUtahBeachMapDelegate: UpdateUtahBeachMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectUtahBeachLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectUtahBeachLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectUtahBeachLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectUtahBeachLayersTableViewCell", for: indexPath) as! SelectUtahBeachLayersTableViewCell
}
}

extension SelectUtahBeachLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Utah Beach" // need array of strings
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

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.keys.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectUtahBeachLayersTableViewCell", for: indexPath) as! SelectUtahBeachLayersTableViewCell
    let key = keys[indexPath.row]
    let switchControl = UISwitch()
    switchControl.tag = indexPath.row
    switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    cell.accessoryView = switchControl
    cell.primaryText = "\(key)"
    cell.secondaryText = "\(self.layerTypes[key] ?? "")"
    cell.backgroundColor = .black
    
        // KURSK
    if switchControl.tag == 0 {
        print("\(switchControl.tag)")
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_MAMMUTRADAR)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_FLOODEDHOUSE)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SUNKENBRIDGE)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_DROWNEDFIELDS)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN4)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_THECHAPEL)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN7)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_AABATTERY)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_HILL5)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN5)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_TAREGREEN)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_REDROOFHOUSE)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_UTAHBEACH_UNCLERED)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // UTAH BEACH TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_MAMMUTRADAR, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachMammutRadar()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachMammutRadar()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_MAMMUTRADAR, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_FLOODEDHOUSE, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachFloodedHouse()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachFloodedHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_FLOODEDHOUSE, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachSainteMarieApproach()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachSainteMarieApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SUNKENBRIDGE, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachSunkenBridge()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachSunkenBridge()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_SUNKENBRIDGE, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachLaGrandeCrique()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachLaGrandeCrique()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_DROWNEDFIELDS, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachDrownedFields()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachDrownedFields()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_DROWNEDFIELDS, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN4, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachWN4()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachWN4()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN4, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_THECHAPEL, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachTheChapel()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachTheChapel()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_THECHAPEL, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN7, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachWN7()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachWN7()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN7, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_AABATTERY, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachAABattery()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachAABattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_AABATTERY, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_HILL5, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachHill5()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachHill5()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_HILL5, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN5, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachWN5()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachWN5()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_WN5, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_TAREGREEN, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachTareGreen()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachTareGreen()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_TAREGREEN, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_REDROOFHOUSE, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachRedRoofHouse()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachRedRoofHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_REDROOFHOUSE, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_UNCLERED, isOn: sender.isOn)
            self.updateUtahBeachMapDelegate?.loadUtahBeachUncleRed()
        } else {
            self.updateUtahBeachMapDelegate?.removeUtahBeachUncleRed()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_UTAHBEACH_UNCLERED, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
