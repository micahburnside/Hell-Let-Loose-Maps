//
//  SelectDrielLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import Foundation
import UIKit

class SelectDrielLayersViewController: BaseViewController {

    var updateDrielMapDelegate: UpdateDrielMapDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PresentationHelper.sharedInstance.prefersScrollingExpandsWhenScrolledToEdge = false
        loadSelectLayerDataSource()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    func loadSelectLayerDataSource() {
        selectDrielLayersDataSource.setup(dataSourceDelegate: self)
        selectDrielLayersDataSource.updateDrielMapDelegate = updateDrielMapDelegate
    }

    @IBOutlet var selectDrielLayersDataSource: SelectDrielLayersDataSource!

}

extension SelectDrielLayersViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        print("Cell selected with Toggle Switch")

    }

    func showAlert(message: String?, error: Error?) {

    }
}

