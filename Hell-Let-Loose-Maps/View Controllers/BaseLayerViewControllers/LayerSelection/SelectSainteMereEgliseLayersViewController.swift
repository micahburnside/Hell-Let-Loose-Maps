//
//  SelectSainteMereEgliseLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectSainteMereEgliseLayersViewController: BaseViewController {

        var updateSainteMereEgliseMapDelegate: UpdateSainteMereEgliseMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectSainteMereEgliseLayersDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectSainteMereEgliseLayersDataSource() {
            selectSainteMereEgliseLayersDataSource.setup(dataSourceDelegate: self)
            selectSainteMereEgliseLayersDataSource.updateSainteMereEgliseMapDelegate = updateSainteMereEgliseMapDelegate
        }

        @IBOutlet var selectSainteMereEgliseLayersDataSource: SelectSainteMereEgliseLayersDataSource!

    }

    extension SelectSainteMereEgliseLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
