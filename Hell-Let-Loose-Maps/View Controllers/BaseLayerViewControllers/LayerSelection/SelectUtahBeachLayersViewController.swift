//
//  SelectUtahBeachLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectUtahBeachLayersViewController: BaseViewController {

        var updateUtahBeachMapDelegate: UpdateUtahBeachMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectUtahBeachLayersDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectUtahBeachLayersDataSource() {
            selectUtahBeachLayersDataSource.setup(dataSourceDelegate: self)
            selectUtahBeachLayersDataSource.updateUtahBeachMapDelegate = updateUtahBeachMapDelegate
        }

        @IBOutlet var selectUtahBeachLayersDataSource: SelectUtahBeachLayersDataSource!

    }

    extension SelectUtahBeachLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
