//
//  SelectDrielLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import Foundation
import UIKit

class SelectDrielLayersDataSource: NSObject {

    func newFunctionTestingDocumentation() {
        
    }
    
    private var layerTypes = MapsListDictionary().drielStrongpointsDictionary
    var updateDrielMapDelegate: UpdateDrielMapDelegate?
    var delegate: DataSourceDelegate?
    @IBOutlet weak var tableView: UITableView!
    private var keys = Array<String>()
    
    func setup(dataSourceDelegate: DataSourceDelegate) {
        self.delegate = dataSourceDelegate
        self.tableView.register(UINib(nibName: "SelectDrielLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectDrielLayersTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
        self.tableView.reloadData()
    }
    
}

extension SelectDrielLayersDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
        _ = tableView.dequeueReusableCell(withIdentifier: "SelectDrielLayersTableViewCell", for: indexPath) as! SelectDrielLayersTableViewCell
    }
}

extension SelectDrielLayersDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .black
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textColor = .white
        title.text = "Driel" // need array of strings
        title.textAlignment = .center
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        return view
    }
    
    ///sets header height in pixels
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    ///animates the cells when they are loaded
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        DispatchQueue.main.async {
            cell.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
                cell.transform = CGAffineTransform.identity
            })
        }
    }

    ///sets number of rows in the section based on the amount of Key-Value pairs in "keys"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectDrielLayersTableViewCell", for: indexPath) as! SelectDrielLayersTableViewCell
        let key = keys[indexPath.row]
        let switchControl = UISwitch()
        switchControl.tag = indexPath.row
        switchControl.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        cell.accessoryView = switchControl
        cell.primaryText = "\(key)"
        cell.secondaryText = "\(self.layerTypes[key] ?? "")"
        cell.backgroundColor = .black
        
        // CARENTAN
        if switchControl.tag == 0 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_OSTERBEEKAPPROACH)
        } else if switchControl.tag == 1 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ROSEANDERPOLDER)
        } else if switchControl.tag == 2 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_KASTEELROSANDE)
        } else if switchControl.tag == 3 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BOATYARD)
        } else if switchControl.tag == 4 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRIDGEWAY)
        } else if switchControl.tag == 5 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIJNBANKS)
        } else if switchControl.tag == 6 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_BRICKFACTORY)
        } else if switchControl.tag == 7 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RAILWAYBRIDGE)
        } else if switchControl.tag == 8 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_GUNEMPLACEMENTS)
        } else if switchControl.tag == 9 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_RIETVELD)
        } else if switchControl.tag == 10 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SOUTHRAILWAY)
        } else if switchControl.tag == 11 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_MIDDELROAD)
        } else if switchControl.tag == 12 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_ORCHARDS)
        } else if switchControl.tag == 13 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_SCHADUWWOLKENFARM)
        } else if switchControl.tag == 14 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DRIEL_FIELDS)
        }
        return cell

    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {

        switch sender.tag {
        // DRIEL TOGGLE SWITCHES
        case 0:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_OSTERBEEKAPPROACH, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielOsterbeekApproach()
            } else {
                self.updateDrielMapDelegate?.removeDrielOsterbeekApproach()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_OSTERBEEKAPPROACH, isOn: false)
            }
            break
        case 1:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_ROSEANDERPOLDER, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielRoseanderPolder()
            } else {
                self.updateDrielMapDelegate?.removeDrielRoseanderPolder()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_ROSEANDERPOLDER, isOn: false)
            }
            break
        case 2:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_KASTEELROSANDE, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielKasteelRosande()
            } else {
                self.updateDrielMapDelegate?.removeDrielKasteelRosande()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_KASTEELROSANDE, isOn: false)
            }
            break
        case 3:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BOATYARD, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielBoatyard()
            } else {
                self.updateDrielMapDelegate?.removeDrielBoatyard()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BOATYARD, isOn: false)
            }
            break
        case 4:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BRIDGEWAY, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielBridgeway()
            } else {
                self.updateDrielMapDelegate?.removeDrielBridgeway()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BRIDGEWAY, isOn: false)
            }
            break
        case 5:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RIJNBANKS, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielRijnBanks()
            } else {
                self.updateDrielMapDelegate?.removeDrielRijnBanks()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RIJNBANKS, isOn: false)
            }
            break
        case 6:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BRICKFACTORY, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielBrickFactory()
            } else {
                self.updateDrielMapDelegate?.removeDrielBrickFactory()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_BRICKFACTORY, isOn: false)
            }
            break
        case 7:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RAILWAYBRIDGE, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielRailwayBridge()
            } else {
                self.updateDrielMapDelegate?.removeDrielRailwayBridge()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RAILWAYBRIDGE, isOn: false)
            }
            break
        case 8:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_GUNEMPLACEMENTS, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielGunEmplacements()
            } else {
                self.updateDrielMapDelegate?.removeDrielGunEmplacements()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_GUNEMPLACEMENTS, isOn: false)
            }
            break
        case 9:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RIETVELD, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielRietveld()
            } else {
                self.updateDrielMapDelegate?.removeDrielRietveld()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_RIETVELD, isOn: false)
            }
            break
        case 10:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_SOUTHRAILWAY, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielSouthRailway()
            } else {
                self.updateDrielMapDelegate?.removeDrielSouthRailway()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_SOUTHRAILWAY, isOn: false)
            }
            break
        case 11:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_MIDDELROAD, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielMiddelRoad()
            } else {
                self.updateDrielMapDelegate?.removeDrielMiddelRoad()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_MIDDELROAD, isOn: false)
            }
            break
        case 12:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_ORCHARDS, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielOrchards()
            } else {
                self.updateDrielMapDelegate?.removeDrielOrchards()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_ORCHARDS, isOn: false)
            }
            break
        case 13:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_SCHADUWWOLKENFARM, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielSchaduwwolkenFarm()
            } else {
                self.updateDrielMapDelegate?.removeDrielSchaduwwolkenFarm()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_SCHADUWWOLKENFARM, isOn: false)
            }
            break
        case 14:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_FIELDS, isOn: sender.isOn)
                self.updateDrielMapDelegate?.loadDrielFields()
            } else {
                self.updateDrielMapDelegate?.removeDrielFields()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DRIEL_FIELDS, isOn: false)
            }
            break
        default:
            break
        }
    }
}
