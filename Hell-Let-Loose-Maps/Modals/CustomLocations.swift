//
//  CustomLocations.swift
//  HLL Maps
//
//  Created by Micah Burnside on 9/25/22.
//

import Foundation
import CoreLocation

struct CustomCarentanLocations {
    
    /// func createCarentanCenterCoordinate(coordinate: CLLocationCoordinate2D) -> CLLocationCoordinate2D?
    ///
    func createCarentanCenterCoordinate(coordinate: CLLocationCoordinate2D) -> CLLocationCoordinate2D? {
        var coordinate: CLLocationCoordinate2D?
        coordinate = CLLocationCoordinate2D(latitude: 49.304440, longitude: -1.243994)
        return coordinate
    }
    
    func getLocation(location: CLLocation) -> CLLocation? {
        return location
    }

}
