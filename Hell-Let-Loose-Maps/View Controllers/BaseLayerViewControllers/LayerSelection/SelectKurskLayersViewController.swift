//
//  SelectKurskLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectKurskLayersViewController: BaseViewController {

        var updateKurskMapDelegate: UpdateKurskMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectKurskLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectKurskLayerDataSource() {
            selectKurskLayersDataSource.setup(dataSourceDelegate: self)
            selectKurskLayersDataSource.updateKurskMapDelegate = updateKurskMapDelegate
        }

        @IBOutlet var selectKurskLayersDataSource: SelectKurskLayersDataSource!

    }

    extension SelectKurskLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
