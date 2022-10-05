//
//  LocationManager.swift
//  HLL Maps
//
//  Created by Micah Burnside on 9/25/22.
//

import UIKit
import Foundation
import CoreLocation


class LocationListener: NSObject, CLLocationManagerDelegate {
    
    // MARK: - Properties
    let manager = CLLocationManager()
    
    // MARK: - Initializers
    override init() {
        super.init()
        manager.delegate = self
        manager.activityType = .other
        manager.requestWhenInUseAuthorization()
    }
    
}
