//
//  SelectKharkovLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 12/2/22.
//

import Foundation
import UIKit
import CoreData


class SelectKharkovLayersViewController: BaseViewController {

    var updateKharkovMapDelegate: UpdateKharkovMapDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PresentationHelper.sharedInstance.prefersScrollingExpandsWhenScrolledToEdge = false
        loadSelectLayerDataSource()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    func loadSelectLayerDataSource() {
        selectKharkovLayersDataSource.setup(dataSourceDelegate: self)
        selectKharkovLayersDataSource.updateKharkovMapDelegate = updateKharkovMapDelegate
    }

    @IBOutlet var selectKharkovLayersDataSource: SelectKharkovLayersDataSource!

}

extension SelectKharkovLayersViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        print("Cell selected with Toggle Switch")

    }

    func showAlert(message: String?, error: Error?) {

    }
}
