//
//  SelectLayerViewController.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/16/22.
//
import Foundation
import UIKit


class SelectLayerViewController: BaseViewController {

    var imageView: UIImageView?
    
    
    var updateMapDelegate: UpdateMapDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSelectLayerDataSource()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    func loadSelectLayerDataSource() {
        selectLayerDataSource.setup(dataSourceDelegate: self)
        selectLayerDataSource.updateMapDelegate = updateMapDelegate
    }

    @IBOutlet var selectLayerDataSource: SelectLayerDataSource!
    

}

extension SelectLayerViewController: DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath) {

    }

    func showAlert(message: String?, error: Error?) {

    }
}




