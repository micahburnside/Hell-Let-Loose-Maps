//
//  SelectStalingradLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectStalingradLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().StalingradStrongpointsDictionary
var updateStalingradMapDelegate: UpdateStalingradMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectStalingradLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectStalingradLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectStalingradLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectStalingradLayersTableViewCell", for: indexPath) as! SelectStalingradLayersTableViewCell
}
}

extension SelectStalingradLayersDataSource: UITableViewDataSource {

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
    title.text = "Stalingrad Strongpoints" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectStalingradLayersTableViewCell", for: indexPath) as! SelectStalingradLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_NAILFACTORY)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CITYOVERLOOK)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_DOLGIYRAVINE)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_YELLOWHOUSE)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_KOMSOMOLHQ)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_RAILWAYCROSSING)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_CARRIAGEDEPOT)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_TRAINSTATION)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_PAVLOVSHOUSE)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_THEBREWERY)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_LSHAPEDHOUSE)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_GRUDININSMILL)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_STALINGRAD_VOLGABANKS)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradMamayevApproach()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradMamayevApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_NAILFACTORY, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradNailFactory()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradNailFactory()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_NAILFACTORY, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_CITYOVERLOOK, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradCityOverlook()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradCityOverlook()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_CITYOVERLOOK, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_DOLGIYRAVINE, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradDolgiyRavine()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradDolgiyRavine()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_DOLGIYRAVINE, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_YELLOWHOUSE, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradYellowHouse()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradYellowHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_YELLOWHOUSE, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_KOMSOMOLHQ, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradKomsomolHQ()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradKomsomolHQ()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_KOMSOMOLHQ, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_RAILWAYCROSSING, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradRailwayCrossing()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradRailwayCrossing()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_RAILWAYCROSSING, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_CARRIAGEDEPOT, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradCarriageDepot()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradCarriageDepot()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_CARRIAGEDEPOT, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_TRAINSTATION, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradTrainStation()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradTrainStation()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_TRAINSTATION, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradHouseOfTheWorkers()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradHouseOfTheWorkers()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_PAVLOVSHOUSE, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradPavlovsHouse()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradPavlovsHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_PAVLOVSHOUSE, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_THEBREWERY, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradTheBrewery()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradTheBrewery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_THEBREWERY, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_LSHAPEDHOUSE, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradLShapedHouse()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradLShapedHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_LSHAPEDHOUSE, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_GRUDININSMILL, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradGrudininsMill()
        } else {
            self.updateStalingradMapDelegate?.removeStalingradGrudininsMill()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_GRUDININSMILL, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_VOLGABANKS, isOn: sender.isOn)
            self.updateStalingradMapDelegate?.loadStalingradVolgaBanks()
        } else {
            self.updateStalingradMapDelegate?.loadStalingradVolgaBanks()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_STALINGRAD_VOLGABANKS, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
