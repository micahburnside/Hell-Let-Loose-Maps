//
//  SelectHurtgenForestLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/1/22.
//

import Foundation
import UIKit

class SelectHurtgenForestLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().HurtgenForestStrongpointsDictionary
var updateHurtgenForestMapDelegate: UpdateHurtgenForestMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectHurtgenForestLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectHurtgenForestLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectHurtgenForestLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectHurtgenForestLayersTableViewCell", for: indexPath) as! SelectHurtgenForestLayersTableViewCell
}
}

extension SelectHurtgenForestLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Hürtgen Forest" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectHurtgenForestLayersTableViewCell", for: indexPath) as! SelectHurtgenForestLayersTableViewCell
    let key = keys[indexPath.row]
    let switchControl = UISwitch()
    switchControl.tag = indexPath.row
    switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    cell.accessoryView = switchControl
    cell.primaryText = "\(key)"
    cell.secondaryText = "\(self.layerTypes[key] ?? "")"
    cell.backgroundColor = .black
    
        // HURTGEN FOREST
    if switchControl.tag == 0 {
        print("\(switchControl.tag)")
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_RESERVESTATION)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LUMBERYARD)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_KALLTRAIL)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THERUIN)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_NORTHPASS)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESCAR)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HILL15)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_JACOBSBARN)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_SALIENT42)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LOGGINGCAMP)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestTheMasbauchApproach()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestTheMasbauchApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_RESERVESTATION, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestReserveStation()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestReserveStation()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_RESERVESTATION, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LUMBERYARD, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestLumberyard()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestLumberyard()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LUMBERYARD, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestWehebachOverlook()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestWehebachOverlook()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_KALLTRAIL, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestKallTrail()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestKallTrail()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_KALLTRAIL, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THERUIN, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestTheRuin()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestTheRuin()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THERUIN, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_NORTHPASS, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestNorthPass()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestNorthPass()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_NORTHPASS, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESCAR, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestTheScar()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestTheScar()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESCAR, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestTheSiegfriedLine()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestTheSiegfriedLine()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HILL15, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestHill15()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestHill15()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HILL15, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_JACOBSBARN, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestJacobsBarn()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestJacobsBarn()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_JACOBSBARN, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_SALIENT42, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestSalient42()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestSalient42()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_SALIENT42, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestGrosshauApproach()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestGrosshauApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestHurtgenApproach()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestHurtgenApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LOGGINGCAMP, isOn: sender.isOn)
            self.updateHurtgenForestMapDelegate?.loadHurtgenForestLoggingCamp()
        } else {
            self.updateHurtgenForestMapDelegate?.removeHurtgenForestLoggingCamp()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_HURTGENFOREST_LOGGINGCAMP, isOn: false)
        }
        break
    default:
        break
        
    }
}
}

