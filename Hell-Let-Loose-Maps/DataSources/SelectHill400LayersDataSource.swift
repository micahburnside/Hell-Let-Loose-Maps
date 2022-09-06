//
//  SelectHill400LayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/26/22.
//

import Foundation
import UIKit

class SelectHill400LayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().Hill400StrongpointsDictionary
var updateHill400MapDelegate: UpdateHill400MapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectHill400LayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectHill400LayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectHill400LayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectHill400LayersTableViewCell", for: indexPath) as! SelectHill400LayersTableViewCell
}
}

extension SelectHill400LayersDataSource: UITableViewDataSource {

func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}
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


func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Strongpoints" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectHill400LayersTableViewCell", for: indexPath) as! SelectHill400LayersTableViewCell
    let key = keys[indexPath.row]
    let switchControl = UISwitch()
    switchControl.tag = indexPath.row
    switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    cell.accessoryView = switchControl
    cell.primaryText = "\(key)"
    cell.secondaryText = "\(self.layerTypes[key] ?? "")"
    cell.backgroundColor = .black
    
        // HILL 400
    if switchControl.tag == 0 {
        print("\(switchControl.tag)")
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_CONVOYAMBUSH)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FEDERCHECKEJUNCTION)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_STUCKCHENFARM)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERHOUSE)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_BERGSTEINCHURCH)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_KIRCHWEG)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_FLAKPITS)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_HILL400)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_SOUTHERNAPPROACH)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ESELSWEG_JUNCTION)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_EASTERNSLOPE)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_TRAINWRECK)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERCROSSING)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_ZERKALL)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HILL400_PAPERMILL)
    }
    return cell

}

@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_CONVOYAMBUSH, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400ConvoyAmbush()
        } else {
            self.updateHill400MapDelegate?.removeHill400ConvoyAmbush()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_CONVOYAMBUSH, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_FEDERCHECKEJUNCTION, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400FedercheckeJunction()
        } else {
            self.updateHill400MapDelegate?.removeHill400FedercheckeJunction()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_FEDERCHECKEJUNCTION, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_STUCKCHENFARM, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400StuckchenFarm()
        } else {
            self.updateHill400MapDelegate?.removeHill400StuckchenFarm()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_STUCKCHENFARM, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERHOUSE, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400RoerRiverHouse()
        } else {
            self.updateHill400MapDelegate?.removeHill400RoerRiverHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERHOUSE, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_BERGSTEINCHURCH, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400BergsteinChurch()
        } else {
            self.updateHill400MapDelegate?.removeHill400BergsteinChurch()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_BERGSTEINCHURCH, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_KIRCHWEG, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400Kirchweg()
        } else {
            self.updateHill400MapDelegate?.removeHill400Kirchweg()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_KIRCHWEG, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_FLAKPITS, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400FlakPits()
        } else {
            self.updateHill400MapDelegate?.removeHill400FlakPits()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_FLAKPITS, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_HILL400, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400Hill400()
        } else {
            self.updateHill400MapDelegate?.removeHill400Hill400()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_HILL400, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_SOUTHERNAPPROACH, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400SouthernApproach()
        } else {
            self.updateHill400MapDelegate?.removeHill400SouthernApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_SOUTHERNAPPROACH, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ESELSWEG_JUNCTION, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400EselswegJunction()
        } else {
            self.updateHill400MapDelegate?.removeHill400EselswegJunction()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ESELSWEG_JUNCTION, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_EASTERNSLOPE, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400EasternSlope()
        } else {
            self.updateHill400MapDelegate?.removeHill400EasternSlope()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_EASTERNSLOPE, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_TRAINWRECK, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400TrainWreck()
        } else {
            self.updateHill400MapDelegate?.removeHill400TrainWreck()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_TRAINWRECK, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERCROSSING, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400RoerRiverCrossing()
        } else {
            self.updateHill400MapDelegate?.removeHill400RoerRiverCrossing()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ROERRIVERCROSSING, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ZERKALL, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400Zerkall()
        } else {
            self.updateHill400MapDelegate?.removeHill400Zerkall()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_ZERKALL, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_PAPERMILL, isOn: sender.isOn)
            self.updateHill400MapDelegate?.loadHill400PaperMill()
        } else {
            self.updateHill400MapDelegate?.removeHill400PaperMill()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HILL400_PAPERMILL, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
