//
//  SelectLayerDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/16/22.
//

import Foundation
import UIKit

class SelectCarentanLayersDataSource: NSObject {

    func newFunctionTestingDocumentation() {
        
    }
    
    private var layerTypes = MapsListDictionary().carentanStrongpointsDictionary
    var updateCarentanMapDelegate: UpdateCarentanMapDelegate?
    var delegate: DataSourceDelegate?
    @IBOutlet weak var tableView: UITableView!
    private var keys = Array<String>()
    
    func setup(dataSourceDelegate: DataSourceDelegate) {
        self.delegate = dataSourceDelegate
        self.tableView.register(UINib(nibName: "SelectCarentanLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectCarentanLayersTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
        self.tableView.reloadData()
    }
    
}

extension SelectCarentanLayersDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
        _ = tableView.dequeueReusableCell(withIdentifier: "SelectCarentanLayersTableViewCell", for: indexPath) as! SelectCarentanLayersTableViewCell
    }
}

extension SelectCarentanLayersDataSource: UITableViewDataSource {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .black
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 24)
        title.textColor = .white
        title.text = "Carentan" // need array of strings
        title.textAlignment = .center
        view.addSubview(title)
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectCarentanLayersTableViewCell", for: indexPath) as! SelectCarentanLayersTableViewCell
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
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_BLACTOT)
        } else if switchControl.tag == 1 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_502NDSTART)
        } else if switchControl.tag == 2 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_FARMRUINS)
        } else if switchControl.tag == 3 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_PUMPINGSTATION)
        } else if switchControl.tag == 4 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RUINS)
        } else if switchControl.tag == 5 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_DERAILEDTRAIN)
        } else if switchControl.tag == 6 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALCROSSING)
        } else if switchControl.tag == 7 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TOWNCENTER)
        } else if switchControl.tag == 8 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_TRAINSTATION)
        } else if switchControl.tag == 9 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CUSTOMS)
        } else if switchControl.tag == 10 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCROSSING)
        } else if switchControl.tag == 11 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_MOUNTHALAIS)
        } else if switchControl.tag == 12 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_CANALLOCKS)
        } else if switchControl.tag == 13 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_RAILCAUSEWAY)
        } else if switchControl.tag == 14 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_LAMAISONDESORMES)
        }
        return cell

    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {

        switch sender.tag {
        // CARENTAN TOGGLE SWITCHES
        case 0:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_BLACTOT, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanBlactot()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanBlactot()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_BLACTOT, isOn: false)
            }
            break
        case 1:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_502NDSTART, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentan502ndStart()
            } else {
                self.updateCarentanMapDelegate?.removeCarentan502ndStart()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_502NDSTART, isOn: false)
            }
            break
        case 2:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FARMRUINS, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanFarmRuins()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanFarmRuins()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_FARMRUINS, isOn: false)
            }
            break
        case 3:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PUMPINGSTATION, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanPumpingStation()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanPumpingStation()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_PUMPINGSTATION, isOn: false)
            }
            break
        case 4:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RUINS, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanRuins()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanRuins()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RUINS, isOn: false)
            }
            break
        case 5:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DERAILEDTRAIN, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanDerailedTrain()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanDerailedTrain()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_DERAILEDTRAIN, isOn: false)
            }
            break
        case 6:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CANALCROSSING, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanCanalCrossing()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanCanalCrossing()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CANALCROSSING, isOn: false)
            }
            break
        case 7:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_TOWNCENTER, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanTownCenter()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanTownCenter()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_TOWNCENTER, isOn: false)
            }
            break
        case 8:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_TRAINSTATION, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanTrainStation()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanTrainStation()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_TRAINSTATION, isOn: false)
            }
            break
        case 9:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CUSTOMS, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanCustoms()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanCustoms()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CUSTOMS, isOn: false)
            }
            break
        case 10:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RAILCROSSING, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanRailCrossing()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanRailCrossing()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RAILCROSSING, isOn: false)
            }
            break
        case 11:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_MOUNTHALAIS, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanMountHalais()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanMountHalais()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_MOUNTHALAIS, isOn: false)
            }
            break
        case 12:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CANALLOCKS, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanCanalLocks()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanCanalLocks()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_CANALLOCKS, isOn: false)
            }
            break
        case 13:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RAILCAUSEWAY, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanRailCauseway()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanRailCauseway()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_RAILCAUSEWAY, isOn: false)
            }
            break
        case 14:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_LAMAISONDESORMES, isOn: sender.isOn)
                self.updateCarentanMapDelegate?.loadCarentanLaMasionDesOrmes()
            } else {
                self.updateCarentanMapDelegate?.removeCarentanLaMasionDesOrmes()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_LAMAISONDESORMES, isOn: false)
            }
            break
        default:
            break
        }
    }
}


