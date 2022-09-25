//
//  SelectPurpleHeartLaneLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectPurpleHeartLaneLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().PurpleHeartLaneStrongpointsDictionary
var updatePurpleHeartLaneMapDelegate: UpdatePurpleHeartLaneMapDelegate?
var delegate: DataSourceDelegate?

    @IBOutlet weak var tableView: UITableView!
    private var keys = Array<String>()
    
func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectPurpleHeartLaneLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectPurpleHeartLaneLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectPurpleHeartLaneLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectPurpleHeartLaneLayersTableViewCell", for: indexPath) as! SelectPurpleHeartLaneLayersTableViewCell
}
}

extension SelectPurpleHeartLaneLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Purple Heart Lane" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectPurpleHeartLaneLayersTableViewCell", for: indexPath) as! SelectPurpleHeartLaneLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_AIDSTATION)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneBloodyBend()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneBloodyBend()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneDeadMansCorner()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneDeadMansCorner()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneForwardBattery()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneForwardBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneJourdanCanal()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneJourdanCanal()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneDouveBridge()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneDouveBridge()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneDouveRiverBattery()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneDouveRiverBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneGroultPillbox()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneGroultPillbox()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneCarentanCauseway()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneCarentanCauseway()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneFlakPosition()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneFlakPosition()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneMadeleineFarm()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneMadeleineFarm()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneMadeleineBridge()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneMadeleineBridge()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_AIDSTATION, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneAidStation()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneAidStation()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_AIDSTATION, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneIngoufCrossroads()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneIngoufCrossroads()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneRoadToCarentan()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneRoadToCarentan()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH, isOn: sender.isOn)
            self.updatePurpleHeartLaneMapDelegate?.loadPurpleHeartLaneCabbagePatch()
        } else {
            self.updatePurpleHeartLaneMapDelegate?.removePurpleHeartLaneCabbagePatch()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
