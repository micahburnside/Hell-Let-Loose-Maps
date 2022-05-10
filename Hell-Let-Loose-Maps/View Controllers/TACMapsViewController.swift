//
//  HomeViewController.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import UIKit

class TACMapsViewController: BaseViewController {

    @IBOutlet var tacMapsListDataSource: TACMapsListDataSource!
    
    override func viewWillAppear(_ animated: Bool) {
        loadMapsListDataSource()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapsListDataSource()
    }
    
    func loadMapsListDataSource() {
        tacMapsListDataSource.setup(dataSourceDelegate: self)
    }

}

extension TACMapsViewController: UITableViewDelegate {
    
}

extension TACMapsViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.pushToViewController(storyboardName: "CarentanTAC", identifier: "CarentanTACViewController")
        case 1:
            self.pushToViewController(storyboardName: "FoyTAC", identifier: "FoyTACViewController")
        case 2:
            self.pushToViewController(storyboardName: "Hill400TAC", identifier: "Hill400TACViewController")
        case 3:
            self.pushToViewController(storyboardName: "HurtgenForestTAC", identifier: "HurtgenForestTACViewController")
        case 4:
            self.pushToViewController(storyboardName: "KurskTAC", identifier: "KurskTACViewController")
        case 5:
            self.pushToViewController(storyboardName: "OmahaBeachTAC", identifier: "OmahaBeachTACViewController")
        case 6:
            self.pushToViewController(storyboardName: "PurpleHeartLaneTAC", identifier: "PurpleHeartLaneTACViewController")
        case 7:
            self.pushToViewController(storyboardName: "RemagenTAC", identifier: "RemagenTACViewController")
        case 8:
            self.pushToViewController(storyboardName: "SaintMarieDuMontTAC", identifier: "SaintMarieDuMontTACViewController")
        case 9:
            self.pushToViewController(storyboardName: "SaintMereEgliseTAC", identifier: "SaintMereEgliseTACViewController")
        case 10:
            self.pushToViewController(storyboardName: "StalingradTAC", identifier: "StalingradTACViewController")
        case 11:
            self.pushToViewController(storyboardName: "UtahBeachTAC", identifier: "UtahBeachTACViewController")
        default:
        break
        }
        print("Cell selected at row \(indexPath.row)")
    }
    
    func showAlert(message: String?, error: Error?) {
        
    }
    
    
}

