//
//  SelectOmahaBeachLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectOmahaBeachLayersViewController: BaseViewController {

        var updateOmahaBeachMapDelegate: UpdateOmahaBeachMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectOmahaBeachLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectOmahaBeachLayerDataSource() {
            selectOmahaBeachLayersDataSource.setup(dataSourceDelegate: self)
            selectOmahaBeachLayersDataSource.updateOmahaBeachMapDelegate = updateOmahaBeachMapDelegate
        }

        @IBOutlet var selectOmahaBeachLayersDataSource: SelectOmahaBeachLayersDataSource!

    }

    extension SelectOmahaBeachLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
