//
//  DataSourceDelegate.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import Foundation
import UIKit

protocol DataSourceDelegate {
    func didSelectCell(indexPath: IndexPath)
    func showAlert(message: String?, error: Error?)
}
