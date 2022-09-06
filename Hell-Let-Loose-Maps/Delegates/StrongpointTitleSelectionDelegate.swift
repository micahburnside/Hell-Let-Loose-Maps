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

public enum StrongpointTitleImage: String {
    case StrongpointTitleCarenetan502ndStart, StrongpointTitleCarenetanBlactot, StrongpointTitleCarenetanCanalCrossing, StrongpointTitleCarenetanCanalLocks, StrongpointTitleCarentanCustoms, StrongpointTitleCarenetanDerailedTrain, StrongpointTitleCarenetanFarmRuins, StrongpointTitleCarenetanLaMaisonDesOrmes, StrongpointTitleCarenetanMountHalais, StrongpointTitleCarenetanPumpingStation, StrongpointTitleCarenetanRailCauseway, StrongpointTitleCarenetanRailCrossing, StrongpointTitleCarenetanRuins, StrongpointTitleCarenetanTownCenter, StrongpointTitleCarenetanTrainStation, StrongpointTitleFoyRoadToRecogne, StrongpointTitleFoyCobrueApproach, StrongpointTitleFoyRoadToNoville, StrongpointTitleFoyCobruFactory, StrongpointTitleFoyFoy, StrongpointTitleFoyFlakBattery, StrongpointTitleFoyWestBend, StrongpointTitleFoySouthernEdge, StrongpointTitleFoyDugoutBarn, StrongpointTitleFoyN30Highway, StrongpointTitleFoyBizroyFoyRoad, StrongpointTitleFoyEasternOurthe, StrongpointTitleFoyRoadToBastogne, StrongpointTitleFoyBoisJoacues, StrongpointTitleFoyForestOutskirt, StrongpointTitleHill400ConvoyAmbush, StrongpointTitleHill400FedercheckeJunction, StrongpointTitleHill400RoerRiverHouse, StrongpointTitleHill400BergesteinChurch, StrongpointTitleHill400Kirchweg, StrongpointTitleHill400FlakPits, StrongpointTitleHill400Hill400, StrongpointTitleHill400SouthernApproach, StrongpointTitleHill400EselswegJunction, StrongpointTitleHill400EasternSlope, StrongpointTitleHill400TrainWreck, StrongpointTitleHill400RiverCrossing, StrongpointTitleHill400Zerkall, StrongpointTitleHill400PaperMill, StrongpointTitleHill400MausbachApproach, StrongpointTitleHurtgenForestReserveStation, StrongpointTitleHurtgenForestLumberYard, StrongpointTitleHurtgenForestWehbachOverlook, StrongpointTitleHurtgenForestKallTrail, StrongpointTitleHurtgenForestTheRuin, StrongpointTitleHurtgenForestNorthPass, StrongpointTitleHurtgenForestTheScar, StrongpointTitleHurtgenForestTheSiegfriedLine, StrongpointHurtgenForestTitleHill15, StrongpointTitleHurtgenForestJacobsBarn, StrongpointTitleHurtgenForestSalient42, StrongpointTitleHurtgenForestGrosshauApproach, StrongpointTitleHurtgenForestHurtgenApproach, StrongpointTitleHurtgenForestLoggingCamp, StrongpointTitleKurskArtilleryPosition, StrongpointTitleKurskGrushki, StrongpointTitleKurskGrushkiFlank, StrongpointTitleKurskPanzersEnd, StrongpointTitleKurskDefenceInDepth, StrongpointTitleKurskListeningPost, StrongpointTitleKurskTheWindmills, StrongpointTitleKurskYamki, StrongpointTitleKurskOlegsHouse, StrongpointTitleKurskRudno, StrongpointTitleKurskDestroyedBattery, StrongpointTitleKurskTheMuddyChurn, StrongpointTitleKurskRoadToKursk, StrongpointTitleKurskAmmoDump, StrongpointTitleKurskEasternPosition, StrongpointTitleOmahaBeachBeaumontRoad, StrongpointTitleOmahaBeachCrossroads, StrongpointTitleOmahaBeachLesIsles, StrongpointTitleOmahaBeachRearBattery, StrongpointTitleOmahaBeachChurchRoad, StrongpointTitleOmahaBeachTheOrchards, StrongpointTitleOmahaBeachWestVierville, StrongpointTitleOmahaBeachViervilleSurmer, StrongpointTitleOmahaBeachArtilleryBattery, StrongpointTitleOmahaBeachWN73, StrongpointTitleOmahaBeachWN71, StrongpointTitleOmahaBeachWN70, StrongpointTitleOmahaBeachDogGreen, StrongpointTitleOmahaBeachTheDraw, StrongpointTitleOmahaBeachDogWhite, StrongpointTitlePurpleHeartLaneBloodyBend, StrongpointTitlePurpleHeartLaneDeadMansCrossing, StrongpointTitlePurpleHeartLaneForwardBattery, StrongpointTitlePurpleHeartLaneJourdansCanal, StrongpointTitlePurpleHeartLaneDouveBridge, StrongpointTitlePurpleHeartLaneDouveRiverBattery, StrongpointTitlePurpleHeartLaneGroultPillbox, StrongpointTitlePurpleHeartLaneCarentanCauseway, StrongpointTitlePurpleHeartLaneFlakPosition, StrongpointTitlePurpleHeartLaneMadeleineFarm, StrongpointTitlePurpleHeartLaneMadeleineBridge, StrongpointTitlePurpleHeartLaneAidStation, StrongpointTitlePurpleHeartLaneIngoufCrossroads, StrongpointTitlePurpleHeartLaneRoadToCarentan, StrongpointTitlePurpleHeartLaneCabbagePatch, StrongpointTitleRemagenAlteLiebeBarsch, StrongpointTitleBewaldetKreuzung, StrongpointTitleDanRadart512, StrongpointTitleErpel, StrongpointTitleErpelerLey, StrongpointTitleKasbackOutlook, StrongpointTitleStSeverinChapen, StrongpointTitleLudendorffBridge, StrongpointTitleRemagenBauernhofAmRhein, StrongpointTitleRemagenRemagen, StrongpointTitleRemagenMobelfabrik, StrongpointTitleRemagenSchlieffenAusweg, StrongpointTitleRemagenWaldburg, StrongpointTitleRemagenMuhlenweg, StrongpointTitleRemagenHagelkreuz, StrongpointTitleSainteMarieDuMontWintersLanding, StrongpointTitleSainteMarieDuMontLeGrandChemin, StrongpointTitleSainteMarieDuMontTheBarn, StrongpointTitleSainteMarieDuMontBrecourtBattery, StrongpointTitleSainteMarieDuMontCattlesheds, StrongpointTitleSainteMarieDuMontRueDeLaGare, StrongpointTitleSainteMarieDuMontTheDugout, StrongpointTitleSainteMarieDuMontAANetwork, StrongpointTitleSainteMarieDuMontPierresFarm, StrongpointTitleSainteMarieDuMontHugosFarm, StrongpointTitleSainteMarieDuMontTheHamlet, StrongpointTitleSainteMarieDuMontSteMarieDuMont, StrongpointTitleSainteMarieDuMontTheCorner, StrongpointSainteMarieDuMontTitleHill6, StrongpointTitleSainteMarieDuMontTheFields, StrongpointTitleSainteMereEgliseFlakPosition, StrongpointTitleSainteMereEgliseVaulaville, StrongpointTitleSainteMereEgliseLaPrairie, StrongpointTitleSainteMereEgliseRouteDeHaras, StrongpointTitleSainteMereEgliseWesternApproach, StrongpointTitleSainteMereEgliseRueDeGambosville, StrongpointSainteMereEgliseTitleHospice, StrongpointTitleSainteMereEgliseSteMereEglise, StrongpointTitleSainteMereEgliseCheckpoint, StrongpointTitleSainteMereEgliseArtilleryBattery, StrongpointTitleSainteMereEgliseTheCemetary, StrongpointTitleSainteMereEgliseMaisonDuCrique, StrongpointTitleSainteMereEgliseLesVieuxVergers, StrongpointTitleSainteMereEgliseTheDraw, StrongpointTitleSainteMereEgliseRuisseauDeFerme, StrongpointTitleStalingradMamayevApproach, StrongpointTitleStalingradNailFactory, StrongpointTitleStalingradCityOverlook, StrongpointTitleStalingradDolgiyRavine, StrongpointTitleStalingradYellowHouse, StrongpointTitleStalingradKomsomolHQ, StrongpointTitleStalingradRailwayCrossing, StrongpointTitleStalingradCarriageDepot, StrongpointTitleStalingradTrainStation, StrongpointTitleStalingradHouseOfTheWorkers, StrongpointTitleStalingradPavlovsHouse, StrongpointTitleStalingradTheBrewery, StrongpointTitleStalingradShapedHouse, StrongpointTitleStalingradGrudininsMill, StrongpointTitleStalingradVolgaBanks, StrongpointTitleUtahBeachMammutRadar, StrongpointTitleUtahBeachFloodedHouse, StrongpointTitleUtahBeachSainteMarieApproach, StrongpointTitleUtahBeachSunkenBridge, StrongpointTitleUtahBeachLaGrandeCrique, StrongpointTitleUtahBeachDrownedFields, StrongpointTitleUtahBeachWN4, StrongpointTitleUtahBeachTheChapel, StrongpointTitleUtahBeachWN7, StrongpointTitleUtahBeachAABattery, StrongpointTitleUtahBeachHill5, StrongpointTitleUtahBeachWN5, StrongpointTitleUtahBeachTareGreen, StrongpointTitleUtahBeachRedRoofHouse, StrongpointUtahBeachTitleUncleRed
}

func getStrongpointTitleImage(strongpointTitleImage: StrongpointTitleImage) -> UIImage {
    switch strongpointTitleImage {
    case .StrongpointTitleCarenetan502ndStart:
        return UIImage(named: "StrongpointTitle502ndStart")!
    case .StrongpointTitleCarenetanBlactot:
        return UIImage(named: "StrongpointTitleBlactot")!
    case .StrongpointTitleCarenetanCanalCrossing:
        return UIImage(named: "StrongpointTitleCanalCrossing")!
    case .StrongpointTitleCarenetanCanalLocks:
        return UIImage(named: "StrongpointTitleCanalLocks")!
    case .StrongpointTitleCarentanCustoms:
        return UIImage(named: "StrongpointTitleCustoms")!
    case .StrongpointTitleCarenetanDerailedTrain:
        return UIImage(named: "StrongpointTitleDerailedTrain")!
    case .StrongpointTitleCarenetanFarmRuins:
        return UIImage(named: "StrongpointTitleFarmRuins")!
    case .StrongpointTitleCarenetanLaMaisonDesOrmes:
        return UIImage(named: "StrongpointTitleLaMaisonDesOrmes")!
    case .StrongpointTitleCarenetanMountHalais:
        return UIImage(named: "StrongpointTitleMountHalais")!
    case .StrongpointTitleCarenetanPumpingStation:
        return UIImage(named: "StrongpointTitlePumpingStation")!
    case .StrongpointTitleCarenetanRailCauseway:
        return UIImage(named: "StrongpointTitleRailCauseway")!
    case .StrongpointTitleCarenetanRailCrossing:
        return UIImage(named: "StrongpointTitleRailCrossing")!
    case .StrongpointTitleCarenetanRuins:
        return UIImage(named: "StrongpointTitleRuins")!
    case .StrongpointTitleCarenetanTownCenter:
        return UIImage(named: "StrongpointTitleTownCenter")!
    case .StrongpointTitleCarenetanTrainStation:
        return UIImage(named: "StrongpointTitleTrainStation")!
    case .StrongpointTitleFoyRoadToRecogne:
        return UIImage(named: "StrongpointTitleFoyRoadToRecogne")!
    case .StrongpointTitleFoyCobrueApproach:
        return UIImage(named: "StrongpointTitleFoyCobrueApproach")!
    case .StrongpointTitleFoyRoadToNoville:
        return UIImage(named: "StrongpointTitleFoyRoadToNoville")!
    case .StrongpointTitleFoyCobruFactory:
        return UIImage(named: "StrongpointTitleFoyCobruFactory")!
    case .StrongpointTitleFoyFoy:
        return UIImage(named: "StrongpointTitleFoyFoy")!
    case .StrongpointTitleFoyFlakBattery:
        return UIImage(named: "StrongpointTitleFoyFlakBattery")!
    case .StrongpointTitleFoyWestBend:
        return UIImage(named: "StrongpointTitleFoyWestBend")!
    case .StrongpointTitleFoySouthernEdge:
        return UIImage(named: "StrongpointTitleFoySouthernEdge")!
    case .StrongpointTitleFoyDugoutBarn:
        return UIImage(named: "StrongpointTitleFoyDugoutBarn")!
    case .StrongpointTitleFoyN30Highway:
        return UIImage(named: "StrongpointTitleFoyN30Highway")!
    case .StrongpointTitleFoyBizroyFoyRoad:
        return UIImage(named: "StrongpointTitleFoyBizroyFoyRoad")!
    case .StrongpointTitleFoyEasternOurthe:
        return UIImage(named: "StrongpointTitleFoyEasternOurthe")!
    case .StrongpointTitleFoyRoadToBastogne:
        return UIImage(named: "StrongpointTitleFoyRoadToBastogne")!
    case .StrongpointTitleFoyBoisJoacues:
        return UIImage(named: "StrongpointTitleFoyBoisJoacues")!
    case .StrongpointTitleFoyForestOutskirt:
        return UIImage(named: "StrongpointTitleFoyForestOutskirt")!
    case .StrongpointTitleHill400ConvoyAmbush:
        return UIImage(named: "StrongpointTitleHill400ConvoyAmbush")!
    case .StrongpointTitleHill400FedercheckeJunction:
        return UIImage(named: "StrongpointTitleHill400FedercheckeJunction")!
    case .StrongpointTitleHill400RoerRiverHouse:
        return UIImage(named: "StrongpointTitleHill400RoerRiverHouse")!
    case .StrongpointTitleHill400BergesteinChurch:
        return UIImage(named: "StrongpointTitleHill400BergesteinChurch")!
    case .StrongpointTitleHill400Kirchweg:
        return UIImage(named: "StrongpointTitleHill400Kirchweg")!
    case .StrongpointTitleHill400FlakPits:
        return UIImage(named: "StrongpointTitleHill400FlakPits")!
    case .StrongpointTitleHill400Hill400:
        return UIImage(named: "StrongpointTitleHill400Hill400")!
    case .StrongpointTitleHill400SouthernApproach:
        return UIImage(named: "StrongpointTitleHill400SouthernApproach")!
    case .StrongpointTitleHill400EselswegJunction:
        return UIImage(named: "StrongpointTitleHill400EselswegJunction")!
    case .StrongpointTitleHill400EasternSlope:
        return UIImage(named: "StrongpointTitleHill400EasternSlope")!
    case .StrongpointTitleHill400TrainWreck:
        return UIImage(named: "StrongpointTitleHill400TrainWreck")!
    case .StrongpointTitleHill400RiverCrossing:
        return UIImage(named: "StrongpointTitleHill400RiverCrossing")!
    case .StrongpointTitleHill400Zerkall:
        return UIImage(named: "StrongpointTitleHill400Zerkall")!
    case .StrongpointTitleHill400PaperMill:
        return UIImage(named: "StrongpointTitleHill400PaperMill")!
    case .StrongpointTitleHill400MausbachApproach:
        return UIImage(named: "StrongpointTitleHill400MausbachApproach")!
    case .StrongpointTitleHurtgenForestReserveStation:
        return UIImage(named: "StrongpointTitleHurtgenForestReserveStation")!
    case .StrongpointTitleHurtgenForestLumberYard:
        return UIImage(named: "StrongpointTitleHurtgenForestLumberYard")!
    case .StrongpointTitleHurtgenForestWehbachOverlook:
        return UIImage(named: "StrongpointTitleHurtgenForestWehbachOverlook")!
    case .StrongpointTitleHurtgenForestKallTrail:
        return UIImage(named: "StrongpointTitleHurtgenForestKallTrail")!
    case .StrongpointTitleHurtgenForestTheRuin:
        return UIImage(named: "StrongpointTitleHurtgenForestTheRuin")!
    case .StrongpointTitleHurtgenForestNorthPass:
        return UIImage(named: "StrongpointTitleHurtgenForestNorthPass")!
    case .StrongpointTitleHurtgenForestTheScar:
        return UIImage(named: "StrongpointTitleHurtgenForestTheScar")!
    case .StrongpointTitleHurtgenForestTheSiegfriedLine:
        return UIImage(named: "StrongpointTitleHurtgenForestTheSiegfriedLine")!
    case .StrongpointHurtgenForestTitleHill15:
        return UIImage(named: "StrongpointHurtgenForestTitleHill15")!
    case .StrongpointTitleHurtgenForestJacobsBarn:
        return UIImage(named: "StrongpointTitleHurtgenForestJacobsBarn")!
    case .StrongpointTitleHurtgenForestSalient42:
        return UIImage(named: "StrongpointTitleHurtgenForestSalient42")!
    case .StrongpointTitleHurtgenForestGrosshauApproach:
        return UIImage(named: "StrongpointTitleHurtgenForestGrosshauApproach")!
    case .StrongpointTitleHurtgenForestHurtgenApproach:
        return UIImage(named: "StrongpointTitleHurtgenForestHurtgenApproach")!
    case .StrongpointTitleHurtgenForestLoggingCamp:
        return UIImage(named: "StrongpointTitleHurtgenForestLoggingCamp")!
    case .StrongpointTitleKurskArtilleryPosition:
        return UIImage(named: "StrongpointTitleKurskArtilleryPosition")!
    case .StrongpointTitleKurskGrushki:
        return UIImage(named: "StrongpointTitleKurskGrushki")!
    case .StrongpointTitleKurskGrushkiFlank:
        return UIImage(named: "StrongpointTitleKurskGrushkiFlank")!
    case .StrongpointTitleKurskPanzersEnd:
        return UIImage(named: "StrongpointTitleKurskPanzersEnd")!
    case .StrongpointTitleKurskDefenceInDepth:
        return UIImage(named: "StrongpointTitleKurskDefenceInDepth")!
    case .StrongpointTitleKurskListeningPost:
        return UIImage(named: "StrongpointTitleKurskListeningPost")!
    case .StrongpointTitleKurskTheWindmills:
        return UIImage(named: "StrongpointTitleKurskTheWindmills")!
    case .StrongpointTitleKurskYamki:
        return UIImage(named: "StrongpointTitleKurskYamki")!
    case .StrongpointTitleKurskOlegsHouse:
        return UIImage(named: "StrongpointTitleKurskOlegsHouse")!
    case .StrongpointTitleKurskRudno:
        return UIImage(named: "StrongpointTitleKurskRudno")!
    case .StrongpointTitleKurskDestroyedBattery:
        return UIImage(named: "StrongpointTitleKurskDestroyedBattery")!
    case .StrongpointTitleKurskTheMuddyChurn:
        return UIImage(named: "StrongpointTitleKurskTheMuddyChurn")!
    case .StrongpointTitleKurskRoadToKursk:
        return UIImage(named: "StrongpointTitleKurskRoadToKursk")!
    case .StrongpointTitleKurskAmmoDump:
        return UIImage(named: "StrongpointTitleKurskAmmoDump")!
    case .StrongpointTitleKurskEasternPosition:
        return UIImage(named: "StrongpointTitleKurskEasternPosition")!
    case .StrongpointTitleOmahaBeachBeaumontRoad:
        return UIImage(named: "StrongpointTitleOmahaBeachBeaumontRoad")!
    case .StrongpointTitleOmahaBeachCrossroads:
        return UIImage(named: "StrongpointTitleOmahaBeachCrossroads")!
    case .StrongpointTitleOmahaBeachLesIsles:
        return UIImage(named: "StrongpointTitleOmahaBeachLesIsles")!
    case .StrongpointTitleOmahaBeachRearBattery:
        return UIImage(named: "StrongpointTitleOmahaBeachRearBattery")!
    case .StrongpointTitleOmahaBeachChurchRoad:
        return UIImage(named: "StrongpointTitleOmahaBeachChurchRoad")!
    case .StrongpointTitleOmahaBeachTheOrchards:
        return UIImage(named: "StrongpointTitleOmahaBeachTheOrchards")!
    case .StrongpointTitleOmahaBeachWestVierville:
        return UIImage(named: "StrongpointTitleOmahaBeachWestVierville")!
    case .StrongpointTitleOmahaBeachViervilleSurmer:
        return UIImage(named: "StrongpointTitleOmahaBeachViervilleSurmer")!
    case .StrongpointTitleOmahaBeachArtilleryBattery:
        return UIImage(named: "StrongpointTitleOmahaBeachArtilleryBattery")!
    case .StrongpointTitleOmahaBeachWN73:
        return UIImage(named: "StrongpointTitleOmahaBeachWN73")!
    case .StrongpointTitleOmahaBeachWN71:
        return UIImage(named: "StrongpointTitleOmahaBeachWN71")!
    case .StrongpointTitleOmahaBeachWN70:
        return UIImage(named: "StrongpointTitleOmahaBeachWN70")!
    case .StrongpointTitleOmahaBeachDogGreen:
        return UIImage(named: "StrongpointTitleOmahaBeachDogGreen")!
    case .StrongpointTitleOmahaBeachTheDraw:
        return UIImage(named: "StrongpointTitleOmahaBeachTheDraw")!
    case .StrongpointTitleOmahaBeachDogWhite:
        return UIImage(named: "StrongpointTitleOmahaBeachDogWhite")!
    case .StrongpointTitlePurpleHeartLaneBloodyBend:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneBloodyBend")!
    case .StrongpointTitlePurpleHeartLaneDeadMansCrossing:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneDeadMansCrossing")!
    case .StrongpointTitlePurpleHeartLaneForwardBattery:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneForwardBattery")!
    case .StrongpointTitlePurpleHeartLaneJourdansCanal:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneJourdansCanal")!
    case .StrongpointTitlePurpleHeartLaneDouveBridge:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneDouveBridge")!
    case .StrongpointTitlePurpleHeartLaneDouveRiverBattery:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneDouveRiverBattery")!
    case .StrongpointTitlePurpleHeartLaneGroultPillbox:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneGroultPillbox")!
    case .StrongpointTitlePurpleHeartLaneCarentanCauseway:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneCarentanCauseway")!
    case .StrongpointTitlePurpleHeartLaneFlakPosition:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneFlakPosition")!
    case .StrongpointTitlePurpleHeartLaneMadeleineFarm:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneMadeleineFarm")!
    case .StrongpointTitlePurpleHeartLaneMadeleineBridge:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneMadeleineBridge")!
    case .StrongpointTitlePurpleHeartLaneAidStation:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneAidStation")!
    case .StrongpointTitlePurpleHeartLaneIngoufCrossroads:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneIngoufCrossroads")!
    case .StrongpointTitlePurpleHeartLaneRoadToCarentan:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneRoadToCarentan")!
    case .StrongpointTitlePurpleHeartLaneCabbagePatch:
        return UIImage(named: "StrongpointTitlePurpleHeartLaneCabbagePatch")!
    case .StrongpointTitleRemagenAlteLiebeBarsch:
        return UIImage(named: "StrongpointTitleRemagenAlteLiebeBarsch")!
    case .StrongpointTitleBewaldetKreuzung:
        return UIImage(named: "StrongpointTitleBewaldetKreuzung")!
    case .StrongpointTitleDanRadart512:
        return UIImage(named: "StrongpointTitleDanRadart512")!
    case .StrongpointTitleErpel:
        return UIImage(named: "StrongpointTitleErpel")!
    case .StrongpointTitleErpelerLey:
        return UIImage(named: "StrongpointTitleErpelerLey")!
    case .StrongpointTitleKasbackOutlook:
        return UIImage(named: "StrongpointTitleKasbackOutlook")!
    case .StrongpointTitleStSeverinChapen:
        return UIImage(named: "StrongpointTitleStSeverinChapen")!
    case .StrongpointTitleLudendorffBridge:
        return UIImage(named: "StrongpointTitleLudendorffBridge")!
    case .StrongpointTitleRemagenBauernhofAmRhein:
        return UIImage(named: "StrongpointTitleRemagenBauernhofAmRhein")!
    case .StrongpointTitleRemagenRemagen:
        return UIImage(named: "StrongpointTitleRemagenRemagen")!
    case .StrongpointTitleRemagenMobelfabrik:
        return UIImage(named: "StrongpointTitleRemagenMobelfabrik")!
    case .StrongpointTitleRemagenSchlieffenAusweg:
        return UIImage(named: "StrongpointTitleRemagenSchlieffenAusweg")!
    case .StrongpointTitleRemagenWaldburg:
        return UIImage(named: "StrongpointTitleRemagenWaldburg")!
    case .StrongpointTitleRemagenMuhlenweg:
        return UIImage(named: "StrongpointTitleRemagenMuhlenweg")!
    case .StrongpointTitleRemagenHagelkreuz:
        return UIImage(named: "StrongpointTitleRemagenHagelkreuz")!
    case .StrongpointTitleSainteMarieDuMontWintersLanding:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontWintersLanding")!
    case .StrongpointTitleSainteMarieDuMontLeGrandChemin:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontLeGrandChemin")!
    case .StrongpointTitleSainteMarieDuMontTheBarn:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontTheBarn")!
    case .StrongpointTitleSainteMarieDuMontBrecourtBattery:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontBrecourtBattery")!
    case .StrongpointTitleSainteMarieDuMontCattlesheds:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontCattlesheds")!
    case .StrongpointTitleSainteMarieDuMontRueDeLaGare:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontRueDeLaGare")!
    case .StrongpointTitleSainteMarieDuMontTheDugout:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontTheDugout")!
    case .StrongpointTitleSainteMarieDuMontAANetwork:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontAANetwork")!
    case .StrongpointTitleSainteMarieDuMontPierresFarm:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontPierresFarm")!
    case .StrongpointTitleSainteMarieDuMontHugosFarm:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontHugosFarm")!
    case .StrongpointTitleSainteMarieDuMontTheHamlet:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontTheHamlet")!
    case .StrongpointTitleSainteMarieDuMontSteMarieDuMont:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontSteMarieDuMont")!
    case .StrongpointTitleSainteMarieDuMontTheCorner:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontTheCorner")!
    case .StrongpointSainteMarieDuMontTitleHill6:
        return UIImage(named: "StrongpointSainteMarieDuMontTitleHill6")!
    case .StrongpointTitleSainteMarieDuMontTheFields:
        return UIImage(named: "StrongpointTitleSainteMarieDuMontTheFields")!
    case .StrongpointTitleSainteMereEgliseFlakPosition:
        return UIImage(named: "StrongpointTitleSainteMereEgliseFlakPosition")!
    case .StrongpointTitleSainteMereEgliseVaulaville:
        return UIImage(named: "StrongpointTitleSainteMereEgliseVaulaville")!
    case .StrongpointTitleSainteMereEgliseLaPrairie:
        return UIImage(named: "StrongpointTitleSainteMereEgliseLaPrairie")!
    case .StrongpointTitleSainteMereEgliseRouteDeHaras:
        return UIImage(named: "StrongpointTitleSainteMereEgliseRouteDeHaras")!
    case .StrongpointTitleSainteMereEgliseWesternApproach:
        return UIImage(named: "StrongpointTitleSainteMereEgliseWesternApproach")!
    case .StrongpointTitleSainteMereEgliseRueDeGambosville:
        return UIImage(named: "StrongpointTitleSainteMereEgliseRueDeGambosville")!
    case .StrongpointSainteMereEgliseTitleHospice:
        return UIImage(named: "StrongpointSainteMereEgliseTitleHospice")!
    case .StrongpointTitleSainteMereEgliseSteMereEglise:
        return UIImage(named: "StrongpointTitleSainteMereEgliseSteMereEglise")!
    case .StrongpointTitleSainteMereEgliseCheckpoint:
        return UIImage(named: "StrongpointTitleSainteMereEgliseCheckpoint")!
    case .StrongpointTitleSainteMereEgliseArtilleryBattery:
        return UIImage(named: "StrongpointTitleSainteMereEgliseArtilleryBattery")!
    case .StrongpointTitleSainteMereEgliseTheCemetary:
        return UIImage(named: "StrongpointTitleSainteMereEgliseTheCemetary")!
    case .StrongpointTitleSainteMereEgliseMaisonDuCrique:
        return UIImage(named: "StrongpointTitleSainteMereEgliseMaisonDuCrique")!
    case .StrongpointTitleSainteMereEgliseLesVieuxVergers:
        return UIImage(named: "StrongpointTitleSainteMereEgliseLesVieuxVergers")!
    case .StrongpointTitleSainteMereEgliseTheDraw:
        return UIImage(named: "StrongpointTitleSainteMereEgliseTheDraw")!
    case .StrongpointTitleSainteMereEgliseRuisseauDeFerme:
        return UIImage(named: "StrongpointTitleSainteMereEgliseRuisseauDeFerme")!
    case .StrongpointTitleStalingradMamayevApproach:
        return UIImage(named: "StrongpointTitleStalingradMamayevApproach")!
    case .StrongpointTitleStalingradNailFactory:
        return UIImage(named: "StrongpointTitleStalingradNailFactory")!
    case .StrongpointTitleStalingradCityOverlook:
        return UIImage(named: "StrongpointTitleStalingradCityOverlook")!
    case .StrongpointTitleStalingradDolgiyRavine:
        return UIImage(named: "StrongpointTitleStalingradDolgiyRavine")!
    case .StrongpointTitleStalingradYellowHouse:
        return UIImage(named: "StrongpointTitleStalingradYellowHouse")!
    case .StrongpointTitleStalingradKomsomolHQ:
        return UIImage(named: "StrongpointTitleStalingradKomsomolHQ")!
    case .StrongpointTitleStalingradRailwayCrossing:
        return UIImage(named: "StrongpointTitleStalingradRailwayCrossing")!
    case .StrongpointTitleStalingradCarriageDepot:
        return UIImage(named: "StrongpointTitleStalingradCarriageDepot")!
    case .StrongpointTitleStalingradTrainStation:
        return UIImage(named: "StrongpointTitleStalingradTrainStation")!
    case .StrongpointTitleStalingradHouseOfTheWorkers:
        return UIImage(named: "StrongpointTitleStalingradHouseOfTheWorkers")!
    case .StrongpointTitleStalingradPavlovsHouse:
        return UIImage(named: "StrongpointTitleStalingradPavlovsHouse")!
    case .StrongpointTitleStalingradTheBrewery:
        return UIImage(named: "StrongpointTitleStalingradTheBrewery")!
    case .StrongpointTitleStalingradShapedHouse:
        return UIImage(named: "StrongpointTitleStalingradShapedHouse")!
    case .StrongpointTitleStalingradGrudininsMill:
        return UIImage(named: "StrongpointTitleStalingradGrudininsMill")!
    case .StrongpointTitleStalingradVolgaBanks:
        return UIImage(named: "StrongpointTitleStalingradVolgaBanks")!
    case .StrongpointTitleUtahBeachMammutRadar:
        return UIImage(named: "StrongpointTitleUtahBeachMammutRadar")!
    case .StrongpointTitleUtahBeachFloodedHouse:
        return UIImage(named: "StrongpointTitleUtahBeachFloodedHouse")!
    case .StrongpointTitleUtahBeachSainteMarieApproach:
        return UIImage(named: "StrongpointTitleUtahBeachSainteMarieApproach")!
    case .StrongpointTitleUtahBeachSunkenBridge:
        return UIImage(named: "StrongpointTitleUtahBeachSunkenBridge")!
    case .StrongpointTitleUtahBeachLaGrandeCrique:
        return UIImage(named: "StrongpointTitleUtahBeachLaGrandeCrique")!
    case .StrongpointTitleUtahBeachDrownedFields:
        return UIImage(named: "StrongpointTitleUtahBeachDrownedFields")!
    case .StrongpointTitleUtahBeachWN4:
        return UIImage(named: "StrongpointTitleUtahBeachWN4")!
    case .StrongpointTitleUtahBeachTheChapel:
        return UIImage(named: "StrongpointTitleUtahBeachTheChapel")!
    case .StrongpointTitleUtahBeachWN7:
        return UIImage(named: "StrongpointTitleUtahBeachWN7")!
    case .StrongpointTitleUtahBeachAABattery:
        return UIImage(named: "StrongpointTitleUtahBeachAABattery")!
    case .StrongpointTitleUtahBeachHill5:
        return UIImage(named: "StrongpointTitleUtahBeachHill5")!
    case .StrongpointTitleUtahBeachWN5:
        return UIImage(named: "StrongpointTitleUtahBeachWN5")!
    case .StrongpointTitleUtahBeachTareGreen:
        return UIImage(named: "StrongpointTitleUtahBeachTareGreen")!
    case .StrongpointTitleUtahBeachRedRoofHouse:
        return UIImage(named: "StrongpointTitleUtahBeachRedRoofHouse")!
    case .StrongpointUtahBeachTitleUncleRed:
        return UIImage(named: "StrongpointUtahBeachTitleUncleRed")!
    }
}
