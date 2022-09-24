//
//  SelectSainteMarieduMontLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectSainteMarieduMontLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().SainteMarieduMontStrongpointsDictionary
var updateSainteMarieduMontMapDelegate: UpdateSainteMarieduMontMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!

private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectSainteMarieduMontLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectSainteMarieduMontLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectSainteMarieduMontLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectSainteMarieduMontLayersTableViewCell", for: indexPath) as! SelectSainteMarieduMontLayersTableViewCell
}
}

extension SelectSainteMarieduMontLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Sainte Marie du Mont Strongpoints" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectSainteMarieduMontLayersTableViewCell", for: indexPath) as! SelectSainteMarieduMontLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEBARN)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THECORNER)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HILL6)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontWintersLanding()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontWintersLanding()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontLeGrandChemin()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontLeGrandChemin()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEBARN, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontTheBarn()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontTheBarn()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEBARN, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontBrecourtBattery()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontBrecourtBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontCattlesheds()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontCattlesheds()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontRueDeLaGare()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontRueDeLaGare()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontTheDugout()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontTheDugout()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontAANetwork()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontAANetwork()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontPierresFarm()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontPierresFarm()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontHugosFarm()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontHugosFarm()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontTheHamlet()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontTheHamlet()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontSteMarieDuMont()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontSteMarieDuMont()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THECORNER, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontTheCorner()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontTheCorner()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THECORNER, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HILL6, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontHill6()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontHill6()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_HILL6, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS, isOn: sender.isOn)
            self.updateSainteMarieduMontMapDelegate?.loadSainteMarieduMontTheFields()
        } else {
            self.updateSainteMarieduMontMapDelegate?.removeSainteMarieduMontTheFields()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
