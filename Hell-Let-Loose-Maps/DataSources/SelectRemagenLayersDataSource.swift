//
//  SelectRemagenLayersDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectRemagenLayersDataSource: NSObject {
private var layerTypes = MapsListDictionary().RemagenStrongpointsDictionary
var updateRemagenMapDelegate: UpdateRemagenMapDelegate?
var delegate: DataSourceDelegate?

    @IBOutlet weak var tableView: UITableView!

private var keys = Array<String>()

func setup(dataSourceDelegate: DataSourceDelegate) {
    self.delegate = dataSourceDelegate
    self.tableView.register(UINib(nibName: "SelectRemagenLayersTableViewCell", bundle: nil), forCellReuseIdentifier: "SelectRemagenLayersTableViewCell")
    self.tableView?.delegate = self
    self.tableView?.dataSource = self
    self.keys = Array(self.layerTypes.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
    self.tableView.reloadData()
}

}

extension SelectRemagenLayersDataSource: UITableViewDelegate {

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.delegate?.didSelectCell(indexPath: indexPath)
    self.tableView.deselectRow(at: indexPath, animated: true)
    _ = tableView.dequeueReusableCell(withIdentifier: "SelectRemagenLayersTableViewCell", for: indexPath) as! SelectRemagenLayersTableViewCell
}
}

extension SelectRemagenLayersDataSource: UITableViewDataSource {

func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let view = UIView()
    view.backgroundColor = .black
    let title = UILabel()
    title.font = UIFont.boldSystemFont(ofSize: 24)
    title.textColor = .white
    title.text = "Remagen Strongpoints" // need array of strings
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
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "SelectRemagenLayersTableViewCell", for: indexPath) as! SelectRemagenLayersTableViewCell
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
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ALTELIEBEBARSCH)
    }  else if switchControl.tag == 1 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BEWALDETKREUZUNG)
    }  else if switchControl.tag == 2 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_DANRADART512)
    }  else if switchControl.tag == 3 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPEL)
    }  else if switchControl.tag == 4 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPELERLEY)
    }  else if switchControl.tag == 5 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_KASBACHOVERLOOK)
    }  else if switchControl.tag == 6 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_STSEVERINCHAPEL)
    }  else if switchControl.tag == 7 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE)
    }  else if switchControl.tag == 8 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN)
    }  else if switchControl.tag == 9 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_REMAGEN)
    }  else if switchControl.tag == 10 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MOBELFABRIK)
    }  else if switchControl.tag == 11 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG)
    }  else if switchControl.tag == 12 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_WALDBURG)
    }  else if switchControl.tag == 13 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_MUHLENWEG)
    }  else if switchControl.tag == 14 {
        switchControl.isOn = StoredData.shared.getToggleState(switchKey: .STRONGPOINT_REMAGEN_HAGELKREUZUNG)
    }
    return cell

}


@objc func didChangeSwitch(_ sender: UISwitch) {

    switch sender.tag {
        // HILL 400 TOGGLE SWITCHES
    case 0:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ALTELIEBEBARSCH, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenAlteLiebeBarsch()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenAlteLiebeBarsch()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ALTELIEBEBARSCH, isOn: false)
        }
        break
    case 1:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_BEWALDETKREUZUNG, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenBewaldetKreuzung()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenBewaldetKreuzung()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_BEWALDETKREUZUNG, isOn: false)
        }
        break
    case 2:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_DANRADART512, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenDanRadart512()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenDanRadart512()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_DANRADART512, isOn: false)
        }
        break
    case 3:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPEL, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenErpel()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenErpel()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPEL, isOn: false)
        }
        break
    case 4:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPELERLEY, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenErpelerLey()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenErpelerLey()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_ERPELERLEY, isOn: false)
        }
        break
    case 5:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_KASBACHOVERLOOK, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenKasbachOutlook()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenKasbachOutlook()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_KASBACHOVERLOOK, isOn: false)
        }
        break
    case 6:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_STSEVERINCHAPEL, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenStSeverinChapel()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenStSeverinChapel()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_STSEVERINCHAPEL, isOn: false)
        }
        break
    case 7:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenLudendorffBridge()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenLudendorffBridge()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE, isOn: false)
        }
        break
    case 8:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenBauernhofAmRhein()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenBauernhofAmRhein()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN, isOn: false)
        }
        break
    case 9:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_REMAGEN, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenRemagen()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenRemagen()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_REMAGEN, isOn: false)
        }
        break
    case 10:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_MOBELFABRIK, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenMobelfabrik()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenMobelfabrik()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_MOBELFABRIK, isOn: false)
        }
        break
    case 11:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenSchlieffenAusweg()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenSchlieffenAusweg()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG, isOn: false)
        }
        break
    case 12:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_WALDBURG, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenWaldburg()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenWaldburg()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_WALDBURG, isOn: false)
        }
        break
    case 13:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_MUHLENWEG, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenMuhlenweg()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenMuhlenweg()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_MUHLENWEG, isOn: false)
        }
        break
    case 14:
        print("\(sender.tag)")
        if sender.isOn {
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_HAGELKREUZUNG, isOn: sender.isOn)
            self.updateRemagenMapDelegate?.loadRemagenHagelkreuz()
        } else {
            self.updateRemagenMapDelegate?.removeRemagenHagelkreuz()
            StoredData.shared.setToggleState(switchKey: .STRONGPOINT_REMAGEN_HAGELKREUZUNG, isOn: false)
        }
        break
    default:
        break
        
    }
}
}
