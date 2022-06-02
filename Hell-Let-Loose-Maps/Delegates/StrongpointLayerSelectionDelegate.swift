//
//  StrongpointLayerSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol StrongpointLayerSelectionDelegate {
    func getStrongpoint(strongpoint: Strongpoint) -> UIImage
}

//MARK: - Strongpoints
public enum Strongpoint {
    case Strongpoint502ndStart, StrongpointBlactot, StrongpointCanalCrossing, StrongpointCanalLocks, StrongpointCustoms, StrongpointDerailedTrain, StrongpointFarmRuins, StrongpointLaMaisonDesOrmes, StrongpointMountHalais, StrongpointPumpingStation, StrongpointRailCauseway, StrongpointRailCrossing, StrongpointRuins, StrongpointTownCenter, StrongpointTrainStation
}

//MARK: - GetStrongpoint
func getStrongpoint(strongpoint: Strongpoint) -> UIImage {
    switch strongpoint {
    case .Strongpoint502ndStart:
        return UIImage(named: "Strongpoint502ndStart.png")!
    case .StrongpointBlactot:
        return UIImage(named: "StrongpointBlactot.png")!
    case .StrongpointCanalCrossing:
        return UIImage(named: "StrongpointCanalCrossing.png")!
    case .StrongpointCanalLocks:
        return UIImage(named: "StrongpointCanalLocks.png")!
    case .StrongpointCustoms:
        return UIImage(named: "StrongpointCustoms.png")!
    case .StrongpointDerailedTrain:
        return UIImage(named: "StrongpointDerailedTrain.png")!
    case .StrongpointFarmRuins:
        return UIImage(named: "StrongpointFarmRuins.png")!
    case .StrongpointLaMaisonDesOrmes:
        return UIImage(named: "StrongpointLaMaisonDesOrmes.png")!
    case .StrongpointMountHalais:
        return UIImage(named: "StrongpointMountHalais.png")!
    case .StrongpointPumpingStation:
        return UIImage(named: "StrongpointPumpingStation.png")!
    case .StrongpointRailCauseway:
        return UIImage(named: "StrongpointRailCauseway.png")!
    case .StrongpointRailCrossing:
        return UIImage(named: "StrongpointRailCrossing.png")!
    case .StrongpointRuins:
        return UIImage(named: "StrongpointRuins.png")!
    case .StrongpointTownCenter:
        return UIImage(named: "StrongpointTownCenter.png")!
    case .StrongpointTrainStation:
        return UIImage(named: "StrongpointTrainStation.png")!
    }
}
