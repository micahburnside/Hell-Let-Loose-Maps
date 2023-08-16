//
//  SelectElAlameinLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import Foundation
import UIKit

class SelectElAlameinLayersDataSource: NSObject {

    func newFunctionTestingDocumentation() {
        
    }
    
    private var layerTypes = MapsListDictionary().elAlameinStrongpointsDictionary
    var updateElAlameinMapDelegate: UpdateElAlameinMapDelegate?
    var delegate: DataSourceDelegate?
    @IBOutlet weak var tableView: UITableView!
    private var keys = Array<String>()
    
    func setup(dataSourceDelegate: DataSourceDelegate) {
        self.delegate = dataSourceDelegate
        self.tableView.register(UINib(nibName: "SelectElAlameinLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectElAlameinLayersTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
        self.tableView.reloadData()
    }
    
}

extension SelectElAlameinLayersDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
        _ = tableView.dequeueReusableCell(withIdentifier: "SelectElAlameinLayersTableViewCell", for: indexPath) as! SelectElAlameinLayersTableViewCell
    }
}

extension SelectElAlameinLayersDataSource: UITableViewDataSource {

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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectElAlameinLayersTableViewCell", for: indexPath) as! SelectElAlameinLayersTableViewCell
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
            switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VEHICLEDEPOT)
        } else if switchControl.tag == 1 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ARTILERYGUNS)
        } else if switchControl.tag == 2 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_MITEIRIYARIDGE)
        } else if switchControl.tag == 3 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_HAMLETRUINS)
        } else if switchControl.tag == 4 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ELMREIR)
        } else if switchControl.tag == 5 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_WATCHTOWER)
        } else if switchControl.tag == 6 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_DESERTRATTRENCHES)
        } else if switchControl.tag == 7 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_OASIS)
        } else if switchControl.tag == 8 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VALLEY)
        } else if switchControl.tag == 9 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_FUELDEPOT)
        } else if switchControl.tag == 10 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDCOMMAND)
        } else if switchControl.tag == 11 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDHANGARS)
        } else if switchControl.tag == 12 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_CLIFFSIDEVILLAGE)
        } else if switchControl.tag == 13 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AMBUSHEDCONVOY)
        } else if switchControl.tag == 14 {
                switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_ELALAMEIN_QUARRY)
        }
        return cell

    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {

        switch sender.tag {
        // CARENTAN TOGGLE SWITCHES
        case 0:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VEHICLEDEPOT, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinVehicleDepot()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinVehicleDepot()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VEHICLEDEPOT, isOn: false)
            }
            break
        case 1:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ARTILERYGUNS, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinArtilleryGuns()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinArtilleryGuns()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ARTILERYGUNS, isOn: false)
            }
            break
        case 2:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_MITEIRIYARIDGE, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinMiteiriyaRidge()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinMiteiriyaRidge()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_MITEIRIYARIDGE, isOn: false)
            }
            break
        case 3:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_HAMLETRUINS, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinHameltRuins()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinHameltRuins()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_HAMLETRUINS, isOn: false)
            }
            break
        case 4:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ELMREIR, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinElMreir()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinElMreir()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_ELMREIR, isOn: false)
            }
            break
        case 5:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_WATCHTOWER, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinWatchtower()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinWatchtower()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_WATCHTOWER, isOn: false)
            }
            break
        case 6:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_DESERTRATTRENCHES, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinDesertRatTrenches()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinDesertRatTrenches()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_DESERTRATTRENCHES, isOn: false)
            }
            break
        case 7:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_OASIS, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinOasis()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinOasis()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_OASIS, isOn: false)
            }
            break
        case 8:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VALLEY, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinValley()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinValley()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_VALLEY, isOn: false)
            }
            break
        case 9:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_FUELDEPOT, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinFuelDepot()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinFuelDepot()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_FUELDEPOT, isOn: false)
            }
            break
        case 10:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDCOMMAND, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinAirfieldCommand()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinAirfieldCommand()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDCOMMAND, isOn: false)
            }
            break
        case 11:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDHANGARS, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinAirfieldHangars()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinAirfieldHangars()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AIRFIELDHANGARS, isOn: false)
            }
            break
        case 12:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_CLIFFSIDEVILLAGE, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinCliffsideVillage()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinCliffsideVillage()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_CLIFFSIDEVILLAGE, isOn: false)
            }
            break
        case 13:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AMBUSHEDCONVOY, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinAmbushedConvoy()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinAmbushedConvoy()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_AMBUSHEDCONVOY, isOn: false)
            }
            break
        case 14:
            print("\(sender.tag)")
            if sender.isOn {
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_QUARRY, isOn: sender.isOn)
                self.updateElAlameinMapDelegate?.loadElAlameinQuarry()
            } else {
                self.updateElAlameinMapDelegate?.removeElAlameinQuarry()
                StoredData.shared.setToggleState(switchKey: .STRONGPOINT_ELALAMEIN_QUARRY, isOn: false)
            }
            break
        default:
            break
        }
    }
}
