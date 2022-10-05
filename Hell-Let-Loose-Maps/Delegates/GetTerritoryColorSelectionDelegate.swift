//
//  GetTerritoryColorSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol GetTerritoryColorSelectionDelegate {
    func getTerritoryColorSelection(territoryColor: TerritoryColor) -> UIColor
}

public enum TerritoryColor {
    case EnemyRed, FriendlyBlue, NeutralWhite
}

func getTerritoryColorSelection(territoryColor: TerritoryColor) -> UIColor {
    switch territoryColor {
    case .FriendlyBlue:
        return .getFriendlyBlue()
    case .NeutralWhite:
        return .getNeutralWhite()
    case .EnemyRed:
        return .getEnemyRed()
    }
}


