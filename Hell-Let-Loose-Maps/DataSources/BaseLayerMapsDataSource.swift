//
//  BaseLayerMapsDataSource.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/9/22.
//

import Foundation
import UIKit

class BaseLayerMapsDataSource: NSObject {
    
    private var mapsList = MapsListDictionary().mapsListDictionary

    var delegate: DataSourceDelegate?

    @IBOutlet weak var tableView: UITableView!
    
    private var keys = Array<String>()

    func setup(dataSourceDelegate: DataSourceDelegate) {
        
        self.delegate = dataSourceDelegate
        self.tableView.register(UINib(nibName: "BaseLayerMapsTableViewCell", bundle: nil), forCellReuseIdentifier: "BaseLayerMapsTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.keys = Array(self.mapsList.keys.sorted(by: {$0.localizedStandardCompare($1) == .orderedAscending}))
        self.tableView.backgroundColor = .clear
        self.tableView.reloadData()
    }
}

extension BaseLayerMapsDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectCell(indexPath: indexPath)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

extension BaseLayerMapsDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            cell.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
            UIView.animate(withDuration: 0.3, animations: {
                cell.transform = CGAffineTransform.identity
            })
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.keys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BaseLayerMapsTableViewCell", for: indexPath) as! BaseLayerMapsTableViewCell
        let key = keys[indexPath.row]
        
        cell.primaryText = "\(key)"
        // get value from mapsListDictionary using the key
        cell.secondaryText = "\(self.mapsList[key] ?? "")"
        cell.backgroundColor = .clear
        cell.addAccessoryView()
        return cell
    }
}
