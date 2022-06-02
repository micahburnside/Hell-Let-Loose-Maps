//
//  GetTerritoryColorSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol GetTerritoryColorSelectionDelegate {
    func getTerritoryColorSelection(territoryColor: TerritoryColor) -> String
}

public enum TerritoryColor {
    case Red, Blue, Neutral
}

func getTerritoryColorSelection(territoryColor: TerritoryColor) -> String {
    switch territoryColor {
    case .Blue:
        return "Blue"
    case .Neutral:
        return "Neutral"
    case .Red:
        return "Red"
    }
}


