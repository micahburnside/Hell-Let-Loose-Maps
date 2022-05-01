//
//  HomeViewController.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import UIKit

class MapsListViewController: BaseViewController {

    @IBOutlet var mapsListDataSource: MapsListDataSource!
    
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

extension MapsListViewController: UITableViewDelegate {
    
}

extension MapsListViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.pushToViewController(storyboardName: "Carentan", identifier: "CarentanViewController")
        case 1:
            self.pushToViewController(storyboardName: "Foy", identifier: "FoyViewController")
        case 2:
            self.pushToViewController(storyboardName: "Hill400", identifier: "Hill400ViewController")
        case 3:
            self.pushToViewController(storyboardName: "HurtgenForest", identifier: "HurtgenForestViewController")
        case 4:
            self.pushToViewController(storyboardName: "Kursk", identifier: "KurskViewController")
        case 5:
            self.pushToViewController(storyboardName: "OmahaBeach", identifier: "OmahaBeachViewController")
        case 6:
            self.pushToViewController(storyboardName: "PurpleHeartLane", identifier: "PurpleHeartLaneViewController")
        case 7:
            self.pushToViewController(storyboardName: "Remagen", identifier: "RemagenViewController")
        case 8:
            self.pushToViewController(storyboardName: "SaintMarieDumont", identifier: "SaintMarieDumontViewController")
        case 9:
            self.pushToViewController(storyboardName: "SaintMereEglise", identifier: "SaintMereEgliseViewController")
        case 10:
            self.pushToViewController(storyboardName: "Stalingrad", identifier: "StalingradViewController")
        case 11:
            self.pushToViewController(storyboardName: "UtahBeach", identifier: "UtahBeachViewController")
        default:
        break
        }
        print("Cell selected at row \(indexPath.row)")
    }
    
    func showAlert(message: String?, error: Error?) {
        
    }
    
    
}

