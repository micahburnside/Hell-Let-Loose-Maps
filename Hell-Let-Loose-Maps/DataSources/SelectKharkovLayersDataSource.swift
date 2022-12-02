//
//  SelectKharkovLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 12/2/22.
//

import Foundation
import UIKit

class SelectKharkovLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().KharkovStrongpointsDictionary
var updateKharkovMapDelegate: UpdateKharkovMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectKharkovLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectKharkovLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectKharkovLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectKharkovLayersTableViewCell", for: indexPath) as! SelectKharkovLayersTableViewCell
}
}

extension SelectKharkovLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Kharkov" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectKharkovLayersTableViewCell", for: indexPath) as! SelectKharkovLayersTableViewCell
    let key = keys[indexPath.row]
    let switchControl = UISwitch()
    switchControl.tag = indexPath.row
    switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    cell.accessoryView = switchControl
    cell.primaryText = "\(key)"
    cell.secondaryText = "\(self.layerTypes[key] ?? "")"
    cell.backgroundColor = .black
    
        // KHARKOV
    if switchControl.tag == 0 {
        print("\(switchControl.tag)")
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_MARSHTOWN)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_GERMANFUELDUMP)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BITTERSPRING)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERWORKS)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WINDMILLHILLSIDE)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WATERMILL)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_STMARY)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_DISTILLERY)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_RIVERCROSSING)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERYARD)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_HAYSTORAGE)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KHARKOV_OVERPASS)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // KHARKOV TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_MARSHTOWN, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovMarshTown()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovMarshTown()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_MARSHTOWN, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovSovietVantagePoint()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovSovietVantagePoint()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_GERMANFUELDUMP, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovGermanFuelDump()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovGermanFuelDump()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_GERMANFUELDUMP, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_BITTERSPRING, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovBitterSpring()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovBitterSpring()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_BITTERSPRING, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERWORKS, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovLumberWorks()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovLumberWorks()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERWORKS, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WINDMILLHILLSIDE, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovWindmillHillside()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovWindmillHillside()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WINDMILLHILLSIDE, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WATERMILL, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovWaterMill()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovWaterMill()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WATERMILL, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_STMARY, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovStMary()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovStMary()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_STMARY, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_DISTILLERY, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovDistillery()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovDistillery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_DISTILLERY, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_RIVERCROSSING, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovRiverCrossing()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovRiverCrossing()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_RIVERCROSSING, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovBelgorodOutskirts()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovBelgorodOutskirts()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERYARD, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovLumberyard()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovLumberyard()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_LUMBERYARD, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovWehrmachtOverlook()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovWehrmachtOverlook()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_HAYSTORAGE, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovHayStorage()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovHayStorage()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_HAYSTORAGE, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_OVERPASS, isOn: sender.isOn)
            self.updateKharkovMapDelegate?.loadKharkovOverpass()
        } else {
            self.updateKharkovMapDelegate?.removeKharkovOverpass()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KHARKOV_OVERPASS, isOn: false)
        }
        break
    default:
        break
        
    }
}
}

