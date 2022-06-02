//
//  FactionSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol FactionSelectionDelegate {
    func getFactionSelection(faction: Faction) -> String
}

public enum Faction {
    case Germany, SovietUnion, UnitedStates
}

func getFactionSelection(faction: Faction) -> String {
    switch faction {
    case .Germany:
        return "Germany"
    case .SovietUnion:
        return "SovietUnion"
    case .UnitedStates:
        return "UnitedStates"
    }
}
