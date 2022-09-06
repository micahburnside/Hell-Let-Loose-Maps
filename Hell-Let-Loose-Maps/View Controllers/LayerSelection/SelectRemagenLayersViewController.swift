//
//  SelectRemagenLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectRemagenLayersViewController: BaseViewController {

        var updateRemagenMapDelegate: UpdateRemagenMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectRemagenLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectRemagenLayerDataSource() {
            selectRemagenLayersDataSource.setup(dataSourceDelegate: self)
            selectRemagenLayersDataSource.updateRemagenMapDelegate = updateRemagenMapDelegate
        }

        @IBOutlet var selectRemagenLayersDataSource: SelectRemagenLayersDataSource!

    }

    extension SelectRemagenLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
