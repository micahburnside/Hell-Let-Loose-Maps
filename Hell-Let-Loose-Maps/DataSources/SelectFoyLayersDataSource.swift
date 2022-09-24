//
//  SelectFoyLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/25/22.
//

import Foundation
import UIKit

class SelectFoyLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().FoyStrongpointsDictionary
var updateFoyMapDelegate: UpdateFoyMapDelegate?
var delegate: DataSourceDelegate?
@IBOutlet weak var tableView: UITableView!
private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectFoyLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectFoyLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectFoyLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectFoyLayersTableViewCell", for: indexPath) as! SelectFoyLayersTableViewCell
}
}

extension SelectFoyLayersDataSource: UITableViewDataSource {

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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectFoyLayersTableViewCell", for: indexPath) as! SelectFoyLayersTableViewCell
    let key = keys[indexPath.row]
    let switchControl = UISwitch()
    switchControl.tag = indexPath.row
    switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
    cell.accessoryView = switchControl
    cell.primaryText = "\(key)"
    cell.secondaryText = "\(self.layerTypes[key] ?? "")"
    cell.backgroundColor = .black
    
        // FOY
    if switchControl.tag == 0 {
        print("\(switchControl.tag)")
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTORECOGNE)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRUAPPROACH)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTONOVILLE)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_COBRU_FACTORY)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FOY)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FLAKBATTERY)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_WESTBEND)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_SOUTHERNEDGE)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_DUGOUTBARN)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_N30HIGHWAY)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BIZORYFOYROAD)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_EASTERN_OURTHE)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_ROADTOBASTOGNE)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_BOISJACUES)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FOY_FORESTOUTSKIRTS)
    }
    return cell

}

@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // FOY TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTORECOGNE, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyRoadToRecogne()
        } else {
            self.updateFoyMapDelegate?.removeFoyRoadToRecogne()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTORECOGNE, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_COBRUAPPROACH, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyCobruApproach()
        } else {
            self.updateFoyMapDelegate?.removeFoyCobruApproach()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_COBRUAPPROACH, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTONOVILLE, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyRoadToNoville()
        } else {
            self.updateFoyMapDelegate?.removeFoyRoadToNoville()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTONOVILLE, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_COBRU_FACTORY, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyCobruFactory()
        } else {
            self.updateFoyMapDelegate?.removeFoyCobruFactory()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_COBRU_FACTORY, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FOY, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyFoy()
        } else {
            self.updateFoyMapDelegate?.removeFoyFoy()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FOY, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FLAKBATTERY, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyFlakBattery()
        } else {
            self.updateFoyMapDelegate?.removeFoyFlakBattery()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FLAKBATTERY, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_WESTBEND, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyWestBend()
        } else {
            self.updateFoyMapDelegate?.removeFoyWestBend()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_WESTBEND, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_SOUTHERNEDGE, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoySouthernEdge()
        } else {
            self.updateFoyMapDelegate?.removeFoySouthernEdge()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_SOUTHERNEDGE, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_DUGOUTBARN, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyDugoutBarn()
        } else {
            self.updateFoyMapDelegate?.removeFoyDugoutBarn()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_DUGOUTBARN, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_N30HIGHWAY, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyN30Highway()
        } else {
            self.updateFoyMapDelegate?.removeFoyN30Highway()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_N30HIGHWAY, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_BIZORYFOYROAD, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyBizoryFoyRoad()
        } else {
            self.updateFoyMapDelegate?.removeFoyBizoryFoyRoad()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_BIZORYFOYROAD, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_EASTERN_OURTHE, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyEasternOurthe()
        } else {
            self.updateFoyMapDelegate?.removeFoyEasternOurthe()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_EASTERN_OURTHE, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTOBASTOGNE, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyRoadToBastogne()
        } else {
            self.updateFoyMapDelegate?.removeFoyRoadToBastogne()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_ROADTOBASTOGNE, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_BOISJACUES, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyBoisJacques()
        } else {
            self.updateFoyMapDelegate?.removeFoyBoisJacques()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_BOISJACUES, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FORESTOUTSKIRTS, isOn: sender.isOn)
            self.updateFoyMapDelegate?.loadFoyForestOutskirts()
        } else {
            self.updateFoyMapDelegate?.removeFoyForestOutskirts()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FOY_FORESTOUTSKIRTS, isOn: false)
        }
        break
    default:
        break
        
    }
}
}


