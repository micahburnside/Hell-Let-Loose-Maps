//
//  SelectHurtgenForestLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/1/22.
//

import Foundation
import UIKit

class SelectHurtgenForestLayersViewController: BaseViewController {

        var updateHurtgenForestMapDelegate: UpdateHurtgenForestMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectHurtgenForestLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectHurtgenForestLayerDataSource() {
            selectHurtgenForestLayersDataSource.setup(dataSourceDelegate: self)
            selectHurtgenForestLayersDataSource.updateHurtgenForestMapDelegate = updateHurtgenForestMapDelegate
        }

        @IBOutlet var selectHurtgenForestLayersDataSource: SelectHurtgenForestLayersDataSource!

    }

    extension SelectHurtgenForestLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
