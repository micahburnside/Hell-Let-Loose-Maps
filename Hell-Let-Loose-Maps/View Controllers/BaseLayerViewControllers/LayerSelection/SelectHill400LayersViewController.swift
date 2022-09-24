//
//  SelectHill400LayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/26/22.
//

import Foundation
import UIKit

class SelectHill400LayersViewController: BaseViewController {

        var updateHill400MapDelegate: UpdateHill400MapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectHill400LayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectHill400LayerDataSource() {
            selectHill400LayersDataSource.setup(dataSourceDelegate: self)
            selectHill400LayersDataSource.updateHill400MapDelegate = updateHill400MapDelegate
        }

        @IBOutlet var selectHill400LayersDataSource: SelectHill400LayersDataSource!

    }

    extension SelectHill400LayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }

