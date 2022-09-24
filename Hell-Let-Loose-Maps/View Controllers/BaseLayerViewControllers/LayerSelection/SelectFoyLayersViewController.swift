//
//  SelectFoyLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/28/22.
//

import Foundation
import UIKit

class SelectFoyLayersViewController: BaseViewController {

        var updateFoyMapDelegate: UpdateFoyMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectFoyLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectFoyLayerDataSource() {
            selectFoyLayerDataSource.setup(dataSourceDelegate: self)
            selectFoyLayerDataSource.updateFoyMapDelegate = updateFoyMapDelegate
        }

        @IBOutlet var selectFoyLayerDataSource: SelectFoyLayersDataSource!

    }

    extension SelectFoyLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }

