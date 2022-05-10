//
//  MapTypeViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/5/22.
//

import UIKit

class MapTypesViewController: BaseViewController {

    @IBOutlet var mapTypesDataSource: MapTypesDataSource!
    
    override func viewWillAppear(_ animated: Bool) {
        loadMapsListDataSource()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapsListDataSource()
    }
    
    func loadMapsListDataSource() {
        mapTypesDataSource.setup(dataSourceDelegate: self)
    }

}

extension MapTypesViewController: UITableViewDelegate {
    
}

extension MapTypesViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.pushToViewController(storyboardName: "StrongpointsMaps", identifier: "StrongpointsMapsViewController")
        case 1:
            self.pushToViewController(storyboardName: "TACMaps", identifier: "TACMapsViewController")
        default:
        break
        }
        print("Cell selected at row \(indexPath.row)")
    }
    
    func showAlert(message: String?, error: Error?) {
        
    }
    
    
}
