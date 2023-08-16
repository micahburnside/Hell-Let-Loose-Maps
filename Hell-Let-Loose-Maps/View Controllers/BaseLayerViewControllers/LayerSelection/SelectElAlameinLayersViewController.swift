//
//  SelectElAlameinLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 7/8/23.
//

import Foundation
import UIKit
import CoreData

class SelectElAlameinLayersViewController: BaseViewController {

    var updateElAlameinMapDelegate: UpdateElAlameinMapDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PresentationHelper.sharedInstance.prefersScrollingExpandsWhenScrolledToEdge = false
        loadSelectLayerDataSource()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    func loadSelectLayerDataSource() {
        selectElAlameinLayersDataSource.setup(dataSourceDelegate: self)
        selectElAlameinLayersDataSource.updateElAlameinMapDelegate = updateElAlameinMapDelegate
    }

    @IBOutlet var selectElAlameinLayersDataSource: SelectElAlameinLayersDataSource!

}

extension SelectElAlameinLayersViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        print("Cell selected with Toggle Switch")

    }

    func showAlert(message: String?, error: Error?) {

    }
}


