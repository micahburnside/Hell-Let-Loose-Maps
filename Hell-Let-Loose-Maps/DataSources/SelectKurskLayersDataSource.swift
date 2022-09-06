//
//  SelectKurskLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectKurskLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().KurskStrongpointsDictionary
var updateKurskMapDelegate: UpdateKurskMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectKurskLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectKurskLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectKurskLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectKurskLayersTableViewCell", for: indexPath) as! SelectKurskLayersTableViewCell
}
}

extension SelectKurskLayersDataSource: UITableViewDataSource {

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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectKurskLayersTableViewCell", for: indexPath) as! SelectKurskLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ARTILLERYPOSITION)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKI)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKIFLANK)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_PANZERSEND)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DEFENCEINDEPTH)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_LISTENINGPOST)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEWINDMILLS)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_YAMKI)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_OLEGSHOUSE)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_RUDNO)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_DESTROYEDBATTERY)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_THEMUDDYCHURN)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_ROADTOKURSK)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_AMMODUMP)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_KURSK_EASTERNPOSITION)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // KURSK TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_ARTILLERYPOSITION, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskArtilleryPosition()
        } else {
            self.updateKurskMapDelegate?.removeKurskArtilleryPosition()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_ARTILLERYPOSITION, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKI, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskGrushki()
        } else {
            self.updateKurskMapDelegate?.removeKurskGrushki()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKI, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKIFLANK, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskGrushkiFlank()
        } else {
            self.updateKurskMapDelegate?.removeKurskGrushkiFlank()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_GRUSHKIFLANK, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_PANZERSEND, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskPanzersEnd()
        } else {
            self.updateKurskMapDelegate?.removeKurskPanzersEnd()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_PANZERSEND, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_DEFENCEINDEPTH, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskDefenceInDepth()
        } else {
            self.updateKurskMapDelegate?.removeKurskDefenceInDepth()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_DEFENCEINDEPTH, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_LISTENINGPOST, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskListeningPost()
        } else {
            self.updateKurskMapDelegate?.removeKurskListeningPost()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_LISTENINGPOST, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_THEWINDMILLS, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskTheWindmills()
        } else {
            self.updateKurskMapDelegate?.removeKurskTheWindmills()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_THEWINDMILLS, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_YAMKI, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskYamki()
        } else {
            self.updateKurskMapDelegate?.removeKurskYamki()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_YAMKI, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_OLEGSHOUSE, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskOlegsHouse()
        } else {
            self.updateKurskMapDelegate?.removeKurskOlegsHouse()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_OLEGSHOUSE, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_RUDNO, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskRudno()
        } else {
            self.updateKurskMapDelegate?.removeKurskRudno()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_RUDNO, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_DESTROYEDBATTERY, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskDestroyedBattery()
        } else {
            self.updateKurskMapDelegate?.removeKurskDestroyedBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_DESTROYEDBATTERY, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_THEMUDDYCHURN, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskTheMuddyChurn()
        } else {
            self.updateKurskMapDelegate?.removeKurskTheMuddyChurn()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_THEMUDDYCHURN, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_ROADTOKURSK, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskRoadToKursk()
        } else {
            self.updateKurskMapDelegate?.removeKurskRoadToKursk()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_ROADTOKURSK, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_AMMODUMP, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskAmmoDump()
        } else {
            self.updateKurskMapDelegate?.removeKurskAmmoDump()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_AMMODUMP, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_EASTERNPOSITION, isOn: sender.isOn)
            self.updateKurskMapDelegate?.loadKurskEasternPosition()
        } else {
            self.updateKurskMapDelegate?.removeKurskEasternPosition()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_KURSK_EASTERNPOSITION, isOn: false)
        }
        break
    default:
        break
        
    }
}
}

