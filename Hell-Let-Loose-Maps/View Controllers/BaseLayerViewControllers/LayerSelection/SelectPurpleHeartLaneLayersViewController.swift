//
//  SelectPurpleHeartLaneLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

class SelectPurpleHeartLaneLayersViewController: BaseViewController {

        var updatePurpleHeartLaneMapDelegate: UpdatePurpleHeartLaneMapDelegate!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            loadSelectPurpleHeartLaneLayerDataSource()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
        }

        func loadSelectPurpleHeartLaneLayerDataSource() {
            selectPurpleHeartLaneLayersDataSource.setup(dataSourceDelegate: self)
            selectPurpleHeartLaneLayersDataSource.updatePurpleHeartLaneMapDelegate = updatePurpleHeartLaneMapDelegate
        }

        @IBOutlet var selectPurpleHeartLaneLayersDataSource: SelectPurpleHeartLaneLayersDataSource!

    }

    extension SelectPurpleHeartLaneLayersViewController: DataSourceDelegate {
        func didSelectCell(indexPath: IndexPath) {
            print("Cell selected with Toggle Switch")

        }

        func showAlert(message: String?, error: Error?) {

        }
    }
