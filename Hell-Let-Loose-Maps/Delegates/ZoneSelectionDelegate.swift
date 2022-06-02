//
//  ZoneSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol ZoneSelectionDelegate {
    func getZone(zone: Zone) -> String
}

public enum Zone {
    case Zone1, Zone2, Zone3, Zone4, Zone5
}

func getZone(zone: Zone) -> String {
    switch zone {
    case .Zone1:
        return "Zone1"
    case .Zone2:
        return "Zone2"
    case .Zone3:
        return "Zone3"
    case .Zone4:
        return "Zone4"
    case .Zone5:
        return "Zone5"
    }
}
