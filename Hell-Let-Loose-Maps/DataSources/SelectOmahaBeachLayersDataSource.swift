//
//  SelectOmahaBeachLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectOmahaBeachLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().OmahaBeachStrongpointsDictionary
var updateOmahaBeachMapDelegate: UpdateOmahaBeachMapDelegate?
    
    
var delegate: DataSourceDelegate?
    @IBOutlet weak var tableView: UITableView!

    
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectOmahaBeachLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectOmahaBeachLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectOmahaBeachLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectOmahaBeachLayersTableViewCell", for: indexPath) as! SelectOmahaBeachLayersTableViewCell
}
}

extension SelectOmahaBeachLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Omaha Beach" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectOmahaBeachLayersTableViewCell", for: indexPath) as! SelectOmahaBeachLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_BEAUMONTROAD)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CROSSROADS)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_LESISLES)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_REARBATTERY)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CHURCHROAD)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEORCHARDS)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WESTVIERVILLE)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_VIERVILLESURMER)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN73)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN71)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN70)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGGREEN)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEDRAW)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGWHITE)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_BEAUMONTROAD, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachBeaumontRoad()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachBeaumontRoad()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_BEAUMONTROAD, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CROSSROADS, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachCrossroads()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachCrossroads()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CROSSROADS, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_LESISLES, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachLesIsles()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachLesIsles()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_LESISLES, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_REARBATTERY, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachRearBattery()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachRearBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_REARBATTERY, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CHURCHROAD, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachChurchRoad()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachChurchRoad()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_CHURCHROAD, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEORCHARDS, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachTheOrchards()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachTheOrchards()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEORCHARDS, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WESTVIERVILLE, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachWestVierville()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachWestVierville()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WESTVIERVILLE, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_VIERVILLESURMER, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachViervilleSurMer()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachViervilleSurMer()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_VIERVILLESURMER, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachArtilleryBattery()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachArtilleryBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN73, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachWN73()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachWN73()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN73, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN71, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachWN71()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachWN71()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN71, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN70, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachWN70()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachWN70()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_WN70, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGGREEN, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachDogGreen()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachDogGreen()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGGREEN, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEDRAW, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachTheDraw()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachTheDraw()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_THEDRAW, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGWHITE, isOn: sender.isOn)
            self.updateOmahaBeachMapDelegate?.loadOmahaBeachDogWhite()
        } else {
            self.updateOmahaBeachMapDelegate?.removeOmahaBeachDogWhite()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_OMAHABEACH_DOGWHITE, isOn: false)
        }
        break
    default:
        break
        
    }
}
}

