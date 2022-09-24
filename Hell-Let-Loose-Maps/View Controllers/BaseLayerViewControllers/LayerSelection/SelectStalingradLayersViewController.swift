//
//  SelectStalingradLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectStalingradLayersViewController: BaseViewController {

        var updateStalingradMapDelegate: UpdateStalingradMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectStalingradLayersDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectStalingradLayersDataSource() {
            selectStalingradLayersDataSource.setup(dataSourceDelegate: self)
            selectStalingradLayersDataSource.updateStalingradMapDelegate = updateStalingradMapDelegate
        }

        @IBOutlet var selectStalingradLayersDataSource: SelectStalingradLayersDataSource!

    }

    extension SelectStalingradLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
