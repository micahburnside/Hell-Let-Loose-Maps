//
//  StrongpointTitleSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol StrongpointTitleSelectionDelegate {
    func getStrongpointTitleImage(strongpointTitleImage: StrongpointTitleImage) -> UIImage
}

public enum StrongpointTitleImage {
    case StrongpointTitle502ndStart, StrongpointTitleBlactot, StrongpointTitleCanalCrossing, StrongpointTitleCanalLocks, StrongpointTitleCustoms, StrongpointTitleDerailedTrain, StrongpointTitleFarmRuins, StrongpointTitleLaMaisonDesOrmes, StrongpointTitleMountHalais, StrongpointTitlePumpingStation, StrongpointTitleRailCauseway, StrongpointTitleRailCrossing, StrongpointTitleRuins, StrongpointTitleTownCenter, StrongpointTitleTrainStation
}

func getStrongpointTitleImage(strongpointTitleImage: StrongpointTitleImage) -> UIImage {
    switch strongpointTitleImage {
    case .StrongpointTitle502ndStart:
        return UIImage(named: "StrongpointTitle502ndStart")!
    case .StrongpointTitleBlactot:
        return UIImage(named: "StrongpointTitleBlactot")!
    case .StrongpointTitleCanalCrossing:
        return UIImage(named: "StrongpointTitleCanalCrossing")!
    case .StrongpointTitleCanalLocks:
        return UIImage(named: "StrongpointTitleCanalLocks")!
    case .StrongpointTitleCustoms:
        return UIImage(named: "StrongpointTitleCustoms")!
    case .StrongpointTitleDerailedTrain:
        return UIImage(named: "StrongpointTitleDerailedTrain")!
    case .StrongpointTitleFarmRuins:
        return UIImage(named: "StrongpointTitleFarmRuins")!
    case .StrongpointTitleLaMaisonDesOrmes:
        return UIImage(named: "StrongpointTitleLaMaisonDesOrmes")!
    case .StrongpointTitleMountHalais:
        return UIImage(named: "StrongpointTitleMountHalais")!
    case .StrongpointTitlePumpingStation:
        return UIImage(named: "StrongpointTitlePumpingStation")!
    case .StrongpointTitleRailCauseway:
        return UIImage(named: "StrongpointTitleRailCauseway")!
    case .StrongpointTitleRailCrossing:
        return UIImage(named: "StrongpointTitleRailCrossing")!
    case .StrongpointTitleRuins:
        return UIImage(named: "StrongpointTitleRuins")!
    case .StrongpointTitleTownCenter:
        return UIImage(named: "StrongpointTitleTownCenter")!
    case .StrongpointTitleTrainStation:
        return UIImage(named: "StrongpointTitleTrainStation")!
    }
}
