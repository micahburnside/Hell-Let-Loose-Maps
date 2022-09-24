//
//  SelectSainteMarieduMontLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectSainteMarieduMontLayersViewController: BaseViewController {

        var updateSainteMarieduMontMapDelegate: UpdateSainteMarieduMontMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectSainteMarieduMontLayersDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectSainteMarieduMontLayersDataSource() {
            selectSainteMarieduMontLayersDataSource.setup(dataSourceDelegate: self)
            selectSainteMarieduMontLayersDataSource.updateSainteMarieduMontMapDelegate = updateSainteMarieduMontMapDelegate
        }

        @IBOutlet var selectSainteMarieduMontLayersDataSource: SelectSainteMarieduMontLayersDataSource!

    }

    extension SelectSainteMarieduMontLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
