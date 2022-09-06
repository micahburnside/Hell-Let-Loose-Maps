//
//  SelectCarentanLayersViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/16/22.
//
import Foundation
import UIKit
import CoreData


class SelectCarentanLayersViewController: BaseViewController {

    var updateCarentanMapDelegate: UpdateCarentanMapDelegate!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSelectLayerDataSource()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    func loadSelectLayerDataSource() {
        selectCarentanLayersDataSource.setup(dataSourceDelegate: self)
        selectCarentanLayersDataSource.updateCarentanMapDelegate = updateCarentanMapDelegate
    }

    @IBOutlet var selectCarentanLayersDataSource: SelectCarentanLayersDataSource!

}

extension SelectCarentanLayersViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {
        print("Cell selected with Toggle Switch")

    }

    func showAlert(message: String?, error: Error?) {

    }
}
