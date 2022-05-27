//
//  MapLayerSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/14/22.
//

import Foundation
import UIKit

public protocol MapLayerSelectionDelegate {
    func getLayer(layerType: LayerType) -> UIImage?
    func getMap(mapName: MapName, layerType: LayerType) -> UIImage?
}

public enum MapName {
    case Carentan, Foy, Hill400, HurtgenForest, Kursk, OmahaBeach, PurpleHeartLane, Remagen, SainteMarieduMont, SainteMereEglise, Stalingrad, UtahBeach
}

//MARK: - All Map Layers
public enum LayerType {
    case CarentanBaseLayer, CarentanTAC, CarentanStrongpoints, FoyBaseLayer, FoyTAC, FoyStrongpoints, Hill400BaseLayer, Hill400TAC, Hill400Strongpoints, HurtgenForestBaseLayer, HurtgenForestTAC, HurtgenForestStrongpoints, KurskBaseLayer, KurskTAC, KurskStrongpoints, OmahaBeachBaseLayer, OmahaBeachTAC, OmahaBeachStrongpoints, PurpleHeartLaneBaseLayer, PurpleHeartLaneTAC, PurpleHeartLaneStrongpoints, RemagenBaseLayer, RemagenTAC, RemagenStrongpoints, SainteMarieduMontBaseLayer, SainteMarieduMontTAC, SainteMarieduMontStrongpoints, SainteMereEgliseBaseLayer, SainteMereEgliseTAC, SainteMereEgliseStrongpoints, StalingradBaseLayer, StalingradTAC, StalingradStrongpoints, UtahBeachBaseLayer, UtahBeachTAC, UtahBeachStrongpoints
}

//MARK: - Get Map Methos
func getMap(mapName: MapName, layerType: LayerType) -> UIImage  {
    switch mapName {
    case .Carentan:
        return getLayer(layerType: layerType)
    case .Foy:
        return getLayer(layerType: layerType)
    case .Hill400:
        return getLayer(layerType: layerType)
    case .HurtgenForest:
        return getLayer(layerType: layerType)
    case .Kursk:
        return getLayer(layerType: layerType)
    case .OmahaBeach:
        return getLayer(layerType: layerType)
    case .PurpleHeartLane:
        return getLayer(layerType: layerType)
    case .Remagen:
        return getLayer(layerType: layerType)
    case .SainteMarieduMont:
        return getLayer(layerType: layerType)
    case .SainteMereEglise:
        return getLayer(layerType: layerType)
    case .Stalingrad:
        return getLayer(layerType: layerType)
    case .UtahBeach:
        return getLayer(layerType: layerType)
    }
}

//MARK: - Get Layer Method
func getLayer(layerType: LayerType) -> UIImage  {
    switch (layerType) {
    case .CarentanBaseLayer:
        return UIImage(named: "CarentanBaseLayer.png")!
    case .CarentanTAC:
        return UIImage(named: "CarentanTAC.png")!
    case .CarentanStrongpoints:
        return UIImage(named: "CarentanStrongpoints.png")!
    case .FoyBaseLayer:
        return UIImage(named: "FoyBaseLayer.png")!
    case .FoyTAC:
        return UIImage(named: "FoyTAC.png")!
    case .FoyStrongpoints:
        return UIImage(named: "FoyStrongpoints.png")!
    case .Hill400BaseLayer:
        return UIImage(named: "Hill400BaseLayer.png")!
    case .Hill400TAC:
        return UIImage(named: "Hill400TAC.png")!
    case .Hill400Strongpoints:
        return UIImage(named: "Hill400Strongpoints.png")!
    case .HurtgenForestBaseLayer:
        return UIImage(named: "HürtgenForestBaseLayer.png")!
    case .HurtgenForestTAC:
        return UIImage(named: "HürtgenForestTAC.png")!
    case .HurtgenForestStrongpoints:
        return UIImage(named: "HürtgenForestStrongpoints.png")!
    case .KurskBaseLayer:
        return UIImage(named: "KurskBaseLayer.png")!
    case .KurskTAC:
        return UIImage(named: "KurskTAC.png")!
    case .KurskStrongpoints:
        return UIImage(named: "KurskStrongpoints.png")!
    case .OmahaBeachBaseLayer:
        return UIImage(named: "OmahaBeachBaseLayer.png")!
    case .OmahaBeachTAC:
        return UIImage(named: "OmahaBeachTAC.png")!
    case .OmahaBeachStrongpoints:
        return UIImage(named: "OmahaBeachStrongpoints.png")!
    case .PurpleHeartLaneBaseLayer:
        return UIImage(named: "PurpleHeartLaneBaseLayer.png")!
    case .PurpleHeartLaneTAC:
        return UIImage(named: "PurpleHeartLaneTAC.png")!
    case .PurpleHeartLaneStrongpoints:
        return UIImage(named: "PurpleHeartLaneStrongpoints.png")!
    case .RemagenBaseLayer:
        return UIImage(named: "RemagenBaseLayer.png")!
    case .RemagenTAC:
        return UIImage(named: "RemagenTAC.png")!
    case .RemagenStrongpoints:
        return UIImage(named: "RemagenStrongpoints.png")!
    case .SainteMarieduMontBaseLayer:
        return UIImage(named: "SainteMarieduMontBaseLayer.png")!
    case .SainteMarieduMontTAC:
        return UIImage(named: "SainteMarieduMontTAC.png")!
    case .SainteMarieduMontStrongpoints:
        return UIImage(named: "SainteMarieduMontStrongpoints.png")!
    case .SainteMereEgliseBaseLayer:
        return UIImage(named: "SainteMereEgliseBaseLayer.png")!
    case .SainteMereEgliseTAC:
        return UIImage(named: "SainteMereEgliseTAC.png")!
    case .SainteMereEgliseStrongpoints:
        return UIImage(named: "SainteMereEgliseStrongpoints.png")!
    case .StalingradBaseLayer:
        return UIImage(named: "StalingradBaseLayer.png")!
    case .StalingradTAC:
        return UIImage(named: "StalingradTAC.png")!
    case .StalingradStrongpoints:
        return UIImage(named: "StalingradStrongpoints.png")!
    case .UtahBeachBaseLayer:
        return UIImage(named: "UtahBeachBaseLayer.png")!
    case .UtahBeachTAC:
        return UIImage(named: "UtahBeachTAC.png")!
    case .UtahBeachStrongpoints:
        return UIImage(named: "UtahBeachStrongpoints.png")!
    }
}

