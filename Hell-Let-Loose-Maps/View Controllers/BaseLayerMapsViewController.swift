//
//  BaseLayerMapsViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import UIKit

class BaseLayerMapsViewController: BaseViewController {

    @IBOutlet var baseLayerMapsDataSource: BaseLayerMapsDataSource!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadMapsListDataSource()
        
        //Required method to tell the device to update the status bar appearance
        setNeedsStatusBarAppearanceUpdate()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadMapsListDataSource()
    }
    
    func loadMapsListDataSource() {
        baseLayerMapsDataSource.setup(dataSourceDelegate: self)
    }
    

}

extension BaseLayerMapsViewController: UITableViewDelegate {
    
}

extension BaseLayerMapsViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.pushToViewController(storyboardName: "CarentanBaseLayer", identifier: "CarentanBaseLayerViewController")
        case 1:
            self.pushToViewController(storyboardName: "DrielBaseLayer", identifier: "DrielBaseLayerViewController")
        case 2:
            self.pushToViewController(storyboardName: "ElAlameinBaseLayer", identifier: "ElAlameinBaseLayerViewController")
        case 3:
            self.pushToViewController(storyboardName: "FoyBaseLayer", identifier: "FoyBaseLayerViewController")
        case 4:
            self.pushToViewController(storyboardName: "Hill400BaseLayer", identifier: "Hill400BaseLayerViewController")
        case 5:
            self.pushToViewController(storyboardName: "HurtgenForestBaseLayer", identifier: "HurtgenForestBaseLayerViewController")
        case 6:
            self.pushToViewController(storyboardName: "KharkovBaseLayer", identifier: "KharkovBaseLayerViewController")
        case 7:
            self.pushToViewController(storyboardName: "KurskBaseLayer", identifier: "KurskBaseLayerViewController")
        case 8:
            self.pushToViewController(storyboardName: "OmahaBeachBaseLayer", identifier: "OmahaBeachBaseLayerViewController")
        case 9:
            self.pushToViewController(storyboardName: "PurpleHeartLaneBaseLayer", identifier: "PurpleHeartLaneBaseLayerViewController")
        case 10:
            self.pushToViewController(storyboardName: "RemagenBaseLayer", identifier: "RemagenBaseLayerViewController")
        case 11:
            self.pushToViewController(storyboardName: "SainteMarieduMontBaseLayer", identifier: "SainteMarieduMontBaseLayerViewController")
        case 12:
            self.pushToViewController(storyboardName: "SainteMereEgliseBaseLayer", identifier: "SainteMereEgliseBaseLayerViewController")
        case 13:
            self.pushToViewController(storyboardName: "StalingradBaseLayer", identifier: "StalingradBaseLayerViewController")
        case 14:
            self.pushToViewController(storyboardName: "UtahBeachBaseLayer", identifier: "UtahBeachBaseLayerViewController")
        default:
        break
        }
        print("Cell selected at row \(indexPath.row)")
    }
    
    func showAlert(message: String?, error: Error?) {
        
    }
    
}
