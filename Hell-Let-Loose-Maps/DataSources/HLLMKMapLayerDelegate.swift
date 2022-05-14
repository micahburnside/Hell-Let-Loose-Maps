//
//  HLLMKMapLayerDelegate.swift
//  Show-Location
//
//  Created by Micah Burnside on 5/10/22.
//

import Foundation
import UIKit

protocol HLLMKMapLayerDelegate: NSObjectProtocol {
    func getTACLayer(image: UIImage, identifier: String)
    func getBaseLayer(image: UIImage, identifier: String)
    func getStrongpointsLayer(image: UIImage, identifier: String)
}
