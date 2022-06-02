//
//  TerritorySelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol TerritorySelectionDelegate {
    func getTerritory(territory: Territory) -> String
}

public enum Territory {
    case EnemyTerritory, FriendlyTerritory, NeutralTerritory
}

func getTerritory(territory: Territory) -> String {
    switch territory {
    case .EnemyTerritory:
        return "EnemyTerritory"
    case .FriendlyTerritory:
        return "FriendlyTerritory"
    case .NeutralTerritory:
        return "NeutralTerritory"
    }
}
