//
//  StrongPointsViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/5/22.
//

import UIKit

class StrongpointsMapsViewController: BaseViewController {

    @IBOutlet var mapsListDataSource: TACMapsListDataSource!
    
    override func viewWillAppear(_ animated: Bool) {
        loadMapsListDataSource()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapsListDataSource()
    }
    
    func loadMapsListDataSource() {
        mapsListDataSource.setup(dataSourceDelegate: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension StrongpointsMapsViewController: UITableViewDelegate {
    
}

extension StrongpointsMapsViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.pushToViewController(storyboardName: "CarentanStrongpoints", identifier: "CarentanStrongpointsViewController")
        case 1:
            self.pushToViewController(storyboardName: "FoyStrongpoints", identifier: "FoyStrongpointsViewController")
        case 2:
            self.pushToViewController(storyboardName: "Hill400Strongpoints", identifier: "Hill400StrongpointsViewController")
        case 3:
            self.pushToViewController(storyboardName: "HurtgenForestStrongpoints", identifier: "HurtgenForestStrongpointsViewController")
        case 4:
            self.pushToViewController(storyboardName: "KurskStrongpoints", identifier: "KurskStrongpointsViewController")
        case 5:
            self.pushToViewController(storyboardName: "OmahaBeachStrongpoints", identifier: "OmahaBeachStrongpointsViewController")
        case 6:
            self.pushToViewController(storyboardName: "PurpleHeartLaneStrongpoints", identifier: "PurpleHeartLaneStrongpointsViewController")
        case 7:
            self.pushToViewController(storyboardName: "RemagenStrongpoints", identifier: "RemagenStrongpointsViewController")
        case 8:
            self.pushToViewController(storyboardName: "SaintMarieDuMontStrongpoints", identifier: "SaintMarieDuMontStrongpointsViewController")
        case 9:
            self.pushToViewController(storyboardName: "SaintMereEgliseStrongpoints", identifier: "SaintMereEgliseStrongpointsViewController")
        case 10:
            self.pushToViewController(storyboardName: "StalingradStrongpoints", identifier: "StalingradStrongpointsViewController")
        case 11:
            self.pushToViewController(storyboardName: "UtahBeachStrongpoints", identifier: "UtahBeachStrongpointsViewController")
        default:
        break
        }
        print("Cell selected at row \(indexPath.row)")
    }
    
    func showAlert(message: String?, error: Error?) {
        
    }
    
    
}
