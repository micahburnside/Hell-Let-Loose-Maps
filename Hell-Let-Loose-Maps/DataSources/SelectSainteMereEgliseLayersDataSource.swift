//
//  SelectSainteMereEgliseLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectSainteMereEgliseLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().SainteMereEgliseStrongpointsDictionary
var updateSainteMereEgliseMapDelegate: UpdateSainteMereEgliseMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectSainteMereEgliseLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectSainteMereEgliseLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectSainteMereEgliseLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectSainteMereEgliseLayersTableViewCell", for: indexPath) as! SelectSainteMereEgliseLayersTableViewCell
}
}

extension SelectSainteMereEgliseLayersDataSource: UITableViewDataSource {

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
    title.text = "Sainte Mere Eglise Strongpoints" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectSainteMereEgliseLayersTableViewCell", for: indexPath) as! SelectSainteMereEgliseLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_HOSPICE)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THEDRAW)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseFlakPosition()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseFlakPosition()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseVaulaville()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseVaulaville()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseLaPrairie()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseLaPrairie()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseRouteDuHaras()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseRouteDuHaras()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseWesternApproach()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseWesternApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseRueDeGambosville()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseRueDeGambosville()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_HOSPICE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseHospice()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseHospice()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_HOSPICE, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseSteMereEglise()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseSteMereEglise()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseCheckpoint()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseCheckpoint()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseArtilleryBattery()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseArtilleryBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseTheCemetery()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseTheCemetery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseMaisonDuCrique()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseMaisonDuCrique()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseLesVieuxVergers()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseLesVieuxVergers()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THEDRAW, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseTheDraw()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseTheDraw()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_THEDRAW, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME, isOn: sender.isOn)
            self.updateSainteMereEgliseMapDelegate?.loadSainteMereEgliseRusseauDeFerme()
        } else {
            self.updateSainteMereEgliseMapDelegate?.removeSainteMereEgliseRusseauDeFerme()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
