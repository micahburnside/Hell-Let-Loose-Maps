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
    case StrongpointCarentan502ndStart, StrongpointCarentanBlactot, StrongpointCarentanCanalCrossing, StrongpointCarentanCanalLocks, StrongpointCarentanCustoms, StrongpointCarentanDerailedTrain, StrongpointCarentanFarmRuins, StrongpointCarentanLaMaisonDesOrmes, StrongpointCarentanMountHalais, StrongpointCarentanPumpingStation, StrongpointCarentanRailCauseway, StrongpointCarentanRailCrossing, StrongpointCarentanRuins, StrongpointCarentanTownCenter, StrongpointCarentanTrainStation, StrongpointFoyRoadToRecogne, StrongpointFoyCobruApproach, StrongpointFoyRoadToNoville, StrongpointFoyCobruFactory, StrongpointFoyFoy, StrongpointFoyFlakBattery, StrongpointFoyWestBend, StrongpointFoySouthernEdge, StrongpointFoyDugoutBarn, StrongpointFoyN30Highway, StrongpointFoyBizoryFoyRoad, StrongpointFoyEasternOurthe, StrongpointFoyRoadToBastogne, StrongpointFoyBoisJoacues, StrongpointFoyForestOutskirt, StrongpointHill400ConvoyAmbush, StrongpointHill400FedercheckeJunction, StrongpointHill400StuckchenFarm, StrongpointHill400RoerRiverHouse, StrongpointHill400BergsteinChurch, StrongpointHill400Kirchweg, StrongpointHill400FlakPits, StrongpointHill400Hill400, StrongpointHill400SouthernApproach, StrongpointHill400EselswegJunction, StrongpointHill400EasternSlope, StrongpointHill400TrainWreck, StrongpointHill400RoerRiverCrossing, StrongpointHill400Zerkall,StrongpointHill400PaperMill, StrongpointHurtgenForestTheMasbauchApproach, StrongpointHurtgenForestReserveStation, StrongpointHurtgenForestLumberYard, StrongpointHurtgenForestWehebachOverlook, StrongpointHurtgenForestKallTrail, StrongpointHurtgenForestTheRuin, StrongpointHurtgenForestNorthPass, StrongpointHurtgenForestTheScar, StrongpointHurtgenForestTheSiegfriedLine, StrongpointHurtgenForestHill15, StrongpointHurtgenForestJacobsBarn, StrongpointHurtgenForestSalient42, StrongpointHurtgenForestGrosshauApproach, StrongpointHurtgenForestHurtgenApproach, StrongpointHurtgenForestLoggingCamp, StrongpointKurskArtilleryPosition, StrongpointKharkovMarshTown, StrongpointKharkovSovietVantagePoint, StrongpointKharkovGermanFuelDump, StrongpointKharkovBitterSpring, StrongpointKharkovLumberWorks, StrongpointKharkovWindmillHillside, StrongpointKharkovWaterMill, StrongpointKharkovStMary, StrongpointKharkovDistillery, StrongpointKharkovRiverCrossing, StrongpointKharkovBelgorodOutskirts, StrongpointKharkovLumberyard, StrongpointKharkovWehrmachtOverlook, StrongpointKharkovHayStorage, StrongpointKharkovOverpass, StrongpointKurskGrushki, StrongpointKurskGruskiFlank, StrongpointKurskPanzersEnd, StrongpointKurskDefenceInDepth, StrongpointKurskListeningPost, StrongpointKurskTheWindmills, StrongpointKurskYamki, StrongpointKurskOlegsHouse, StrongpointKurskRudno, StrongpointKurskDestroyedBattery, StrongpointKurskTheMuddyChurn, StrongpointKurskRoadToKursk, StrongpointKurskAmmoDump, StrongpointKurskEasternPosition, StrongpointOmahaBeachBeaumontRoad, StrongpointOmahaBeachCrossroads, StrongpointOmahaBeachLesIsles, StrongpointOmahaBeachRearBattery, StrongpointOmahaBeachChurchRoad, StrongpointOmahaBeachTheOrchards, StrongpointOmahaBeachWestVierville, StrongpointOmahaBeachViervilleSurmer, StrongpointOmahaBeachArtilleryBattery, StrongpointOmahaBeachWN73, StrongpointOmahaBeachWN71, StrongpointOmahaBeachWN70, StrongpointOmahaBeachDogGreen, StrongpointOmahaBeachTheDraw, StrongpoinOmahaBeachtDogWhite, StrongpointPurpleHeartLaneBloodyBend, StrongpointPurpleHeartLaneDeadMansCorner, StrongpointPurpleHeartLaneForwardBattery, StrongpointPurpleHeartLaneJourdansCanal, StrongpointPurpleHeartLaneDouveBridge, StrongpointPurpleHeartLaneDouveRiverBattery, StrongpointPurpleHeartLaneGroultPillbox, StrongpointPurpleHeartLaneCarentanCauseway, StrongpointPurpleHeartLaneFlakPosition, StrongpointPurpleHeartLaneMadeleineFarm, StrongpointPurpleHeartLaneMadeleineBridge, StrongpointPurpleHeartLaneAidStation, StrongpointPurpleHeartLaneIngoufCrossroads, StrongpointPurpleHeartLaneRoadToCarentan, StrongpointPurpleHeartLaneCabbagePatch, StrongpointRemagenAlteLiebeBarsch, StrongpointRemagenBewaldetKreuzung, StrongpointRemagenDanRadart512, StrongpointRemagenErpel, StrongpointRemagenErpelerLey, StrongpointRemagenKasbackOutlook, StrongpointRemagenStSeverinChapen, StrongpointRemagenLudendorffBridge, StrongpointRemagenBauernhofAmRhein,   StrongpointRemagenRemagen, StrongpointRemagenMobelfabrik, StrongpointRemagenSchlieffenAusweg, StrongpointRemagenWaldburg, StrongpointRemagenMuhlenweg, StrongpointRemagenHagelkreuz, StrongpointSainteMarieduMontWintersLanding, StrongpointSainteMarieduMontLeGrandChemin, StrongpointSainteMarieduMontTheBarn, StrongpointSainteMarieduMontBrecourtBattery, StrongpointSainteMarieduMontCattlesheds, StrongpointSainteMarieduMontRueDeLaGare, StrongpointSainteMarieduMontTheDugout, StrongpointSainteMarieduMontAANetwork, StrongpointSainteMarieduMontPierresFarm, StrongpointSainteMarieduMontHugosFarm, StrongpointSainteMarieduMontTheHamlet, StrongpointSainteMarieduMontSteMarieDuMont, StrongpointSainteMarieduMontTheCorner, StrongpointSainteMarieduMontHill6, StrongpointSainteMarieduMontTheFields, StrongpointSainteMereEgliseFlakPosition, StrongpointSainteMereEgliseVaulaville, StrongpointSainteMereEgliseLaPrairie, StrongpointSainteMereEgliseRouteDuHaras, StrongpointSainteMereEgliseWesternApproach, StrongpointSainteMereEgliseRueDeGambosville, StrongpointSainteMereEgliseHospice, StrongpointSainteMereEgliseSteMereEglise, StrongpointSainteMereEgliseCheckpoint, StrongpointSainteMereEgliseArtilleryBattery, StrongpointSainteMereEgliseTheCemetary, StrongpointSainteMereEgliseMaisonDuCrique, StrongpointSainteMereEgliseLesVieuxVergers, StrongpointSainteMereEgliseTheDraw, StrongpointSainteMereEgliseRusseauDeFerme, StrongpointStalingradMamayevApproach, StrongpointStalingradNailFactory, StrongpointStalingradCityOverlook, StrongpointStalingradDolgiyRavine, StrongpointStalingradYellowHouse, StrongpointStalingradKomsomolHQ, StrongpointStalingradRailwayCrossing, StrongpointStalingradCarriageDepot, StrongpointStalingradTrainStation, StrongpointStalingradHouseOfTheWorkers, StrongpointStalingradPavlovsHouse, StrongpointStalingradTheBrewery, StrongpointStalingradLShapedHouse, StrongpointStalingradGrudininsMill, StrongpointStalingradVolgaBanks, StrongpointUtahBeachMammutRadar, StrongpointUtahBeachFloodedHouse, StrongpointUtahBeachSainteMarieApproach, StrongpointUtahBeachSunkenBridge, StrongpointUtahBeachLaGrandeCrique, StrongpointUtahBeachDrownedFields, StrongpointUtahBeachWN4, StrongpointUtahBeachTheChapel, StrongpointUtahBeachWN7, StrongpointUtahBeachAABattery, StrongpointUtahBeachHill5, StrongpointUtahBeachWN5, StrongpointUtahBeachTareGreen, StrongpointUtahBeachRedRoofHouse, StrongpointUtahBeachUncleRed
}

//MARK: - GetStrongpoint
func getStrongpoint(strongpoint: Strongpoint) -> UIImage {
    switch strongpoint {
    case .StrongpointCarentan502ndStart:
        return UIImage(named: "StrongpointCarentan502ndStart.png")!
    case .StrongpointCarentanBlactot:
        return UIImage(named: "StrongpointCarentanBlactot.png")!
    case .StrongpointCarentanCanalCrossing:
        return UIImage(named: "StrongpointCarentanCanalCrossing.png")!
    case .StrongpointCarentanCanalLocks:
        return UIImage(named: "StrongpointCarentanCanalLocks.png")!
    case .StrongpointCarentanCustoms:
        return UIImage(named: "StrongpointCarentanCustoms.png")!
    case .StrongpointCarentanDerailedTrain:
        return UIImage(named: "StrongpointCarentanDerailedTrain.png")!
    case .StrongpointCarentanFarmRuins:
        return UIImage(named: "StrongpointCarentanFarmRuins.png")!
    case .StrongpointCarentanLaMaisonDesOrmes:
        return UIImage(named: "StrongpointCarentanLaMaisonDesOrmes.png")!
    case .StrongpointCarentanMountHalais:
        return UIImage(named: "StrongpointCarentanMountHalais.png")!
    case .StrongpointCarentanPumpingStation:
        return UIImage(named: "StrongpointCarentanPumpingStation.png")!
    case .StrongpointCarentanRailCauseway:
        return UIImage(named: "StrongpointCarentanRailCauseway.png")!
    case .StrongpointCarentanRailCrossing:
        return UIImage(named: "StrongpointCarentanRailCrossing.png")!
    case .StrongpointCarentanRuins:
        return UIImage(named: "StrongpointCarentanRuins.png")!
    case .StrongpointCarentanTownCenter:
        return UIImage(named: "StrongpointCarentanTownCenter.png")!
    case .StrongpointCarentanTrainStation:
        return UIImage(named: "StrongpointCarentanTrainStation.png")!
    case .StrongpointFoyRoadToRecogne:
        return UIImage(named: "StrongpointFoyRoadToRecogne.png")!
    case .StrongpointFoyCobruApproach:
        return UIImage(named: "StrongpointFoyCobruApproach.png")!
    case .StrongpointFoyRoadToNoville:
        return UIImage(named: "StrongpointFoyRoadToNoville.png")!
    case .StrongpointFoyCobruFactory:
        return UIImage(named: "StrongpointFoyCobruFactory.png")!
    case .StrongpointFoyFoy:
        return UIImage(named: "StrongpointFoyFoy.png")!
    case .StrongpointFoyFlakBattery:
        return UIImage(named: "StrongpointFoyFlakBattery.png")!
    case .StrongpointFoyWestBend:
        return UIImage(named: "StrongpointFoyWestBend.png")!
    case .StrongpointFoySouthernEdge:
        return UIImage(named: "StrongpointFoySouthernEdge.png")!
    case .StrongpointFoyDugoutBarn:
        return UIImage(named: "StrongpointFoyDugoutBarn.png")!
    case .StrongpointFoyN30Highway:
        return UIImage(named: "StrongpointFoyN30Highway.png")!
    case .StrongpointFoyBizoryFoyRoad:
        return UIImage(named: "StrongpointFoyBizoryFoyRoad.png")!
    case .StrongpointFoyEasternOurthe:
        return UIImage(named: "StrongpointFoyEasternOurthe.png")!
    case .StrongpointFoyRoadToBastogne:
        return UIImage(named: "StrongpointFoyRoadToBastogne.png")!
    case .StrongpointFoyBoisJoacues:
        return UIImage(named: "StrongpointFoyBoisJacques.png")!
    case .StrongpointFoyForestOutskirt:
        return UIImage(named: "StrongpointFoyForestOutskirts.png")!
    case .StrongpointHill400ConvoyAmbush:
        return UIImage(named: "StrongpointHill400ConvoyAmbush.png")!
    case .StrongpointHill400FedercheckeJunction:
        return UIImage(named: "StrongpointHill400FedercheckeJunction.png")!
    case .StrongpointHill400StuckchenFarm:
        return UIImage(named: "StrongpointHill400StuckchenFarm.png")!
    case .StrongpointHill400RoerRiverHouse:
        return UIImage(named: "StrongpointHill400RoerRiverHouse.png")!
    case .StrongpointHill400BergsteinChurch:
        return UIImage(named: "StrongpointHill400BergsteinChurch.png")!
    case .StrongpointHill400Kirchweg:
        return UIImage(named: "StrongpointHill400Kirchweg.png")!
    case .StrongpointHill400FlakPits:
        return UIImage(named: "StrongpointHill400FlakPits.png")!
    case .StrongpointHill400Hill400:
        return UIImage(named: "StrongpointHill400Hill400.png")!
    case .StrongpointHill400SouthernApproach:
        return UIImage(named: "StrongpointHill400SouthernApproach.png")!
    case .StrongpointHill400EselswegJunction:
        return UIImage(named: "StrongpointHill400EselswegJunction.png")!
    case .StrongpointHill400EasternSlope:
        return UIImage(named: "StrongpointHill400EasternSlope.png")!
    case .StrongpointHill400TrainWreck:
        return UIImage(named: "StrongpointHill400TrainWreck.png")!
    case .StrongpointHill400RoerRiverCrossing:
        return UIImage(named: "StrongpointHill400RoerRiverCrossing.png")!
    case .StrongpointHill400Zerkall:
        return UIImage(named: "StrongpointHill400Zerkall.png")!
    case .StrongpointHill400PaperMill:
        return UIImage(named: "StrongpointHill400PaperMill.png")!
    case .StrongpointHurtgenForestTheMasbauchApproach:
        return UIImage(named: "StrongpointHurtgenForestTheMasbauchApproach.png")!
    case .StrongpointHurtgenForestReserveStation:
        return UIImage(named: "StrongpointHurtgenForestReserveStation.png")!
    case .StrongpointHurtgenForestLumberYard:
        return UIImage(named: "StrongpointHurtgenForestLumberYard.png")!
    case .StrongpointHurtgenForestWehebachOverlook:
        return UIImage(named: "StrongpointHurtgenForestWehebachOverlook.png")!
    case .StrongpointHurtgenForestKallTrail:
        return UIImage(named: "StrongpointHurtgenForestKallTrail.png")!
    case .StrongpointHurtgenForestTheRuin:
        return UIImage(named: "StrongpointHurtgenForestTheRuin.png")!
    case .StrongpointHurtgenForestNorthPass:
        return UIImage(named: "StrongpointHurtgenForestNorthPass.png")!
    case .StrongpointHurtgenForestTheScar:
        return UIImage(named: "StrongpointHurtgenForestTheScar.png")!
    case .StrongpointHurtgenForestTheSiegfriedLine:
        return UIImage(named: "StrongpointHurtgenForestTheSiegfriedLine.png")!
    case .StrongpointHurtgenForestHill15:
        return UIImage(named: "StrongpointHurtgenForestHill15.png")!
    case .StrongpointHurtgenForestJacobsBarn:
        return UIImage(named: "StrongpointHurtgenForestJacobsBarn.png")!
    case .StrongpointHurtgenForestSalient42:
        return UIImage(named: "StrongpointHurtgenForestSalient42.png")!
    case .StrongpointHurtgenForestGrosshauApproach:
        return UIImage(named: "StrongpointHurtgenForestGrosshauApproach.png")!
    case .StrongpointHurtgenForestHurtgenApproach:
        return UIImage(named: "StrongpointHurtgenForestHurtgenApproach.png")!
    case .StrongpointHurtgenForestLoggingCamp:
        return UIImage(named: "StrongpointHurtgenForestLoggingCamp.png")!
    case .StrongpointKharkovMarshTown:
        return UIImage(named: "StrongpointKharkovMarshTown.png")!
    case .StrongpointKharkovSovietVantagePoint:
        return UIImage(named: "StrongpointKharkovSovietVantagePoint.png")!
    case .StrongpointKharkovGermanFuelDump:
        return UIImage(named: "StrongpointKharkovGermanFuelDump.png")!
    case .StrongpointKharkovBitterSpring:
        return UIImage(named: "StrongpointKharkovBitterSpring.png")!
    case .StrongpointKharkovLumberWorks:
        return UIImage(named: "StrongpointKharkovLumberWorks.png")!
    case .StrongpointKharkovWindmillHillside:
        return UIImage(named: "StrongpointKharkovWindmillHillside.png")!
    case .StrongpointKharkovWaterMill:
        return UIImage(named: "StrongpointKharkovWaterMill.png")!
    case .StrongpointKharkovStMary:
        return UIImage(named: "StrongpointKharkovStMary.png")!
    case .StrongpointKharkovDistillery:
        return UIImage(named: "StrongpointKharkovDistillery.png")!
    case .StrongpointKharkovRiverCrossing:
        return UIImage(named: "StrongpointKharkovRiverCrossing.png")!
    case .StrongpointKharkovBelgorodOutskirts:
        return UIImage(named: "StrongpointKharkovBelgorodOutskirts.png")!
    case .StrongpointKharkovLumberyard:
        return UIImage(named: "StrongpointKharkovLumberyard.png")!
    case .StrongpointKharkovWehrmachtOverlook:
        return UIImage(named: "StrongpointKharkovWehrmachtOverlook.png")!
    case .StrongpointKharkovHayStorage:
        return UIImage(named: "StrongpointKharkovHayStorage.png")!
    case .StrongpointKharkovOverpass:
        return UIImage(named: "StrongpointKharkovOverpass.png")!
    case .StrongpointKurskArtilleryPosition:
        return UIImage(named: "StrongpointKurskArtilleryPosition.png")!
    case .StrongpointKurskGrushki:
        return UIImage(named: "StrongpointKurskGrushki.png")!
    case .StrongpointKurskGruskiFlank:
        return UIImage(named: "StrongpointKurskGrushkiFlank.png")!
    case .StrongpointKurskPanzersEnd:
        return UIImage(named: "StrongpointKurskPanzersEnd.png")!
    case .StrongpointKurskDefenceInDepth:
        return UIImage(named: "StrongpointKurskDefenceInDepth.png")!
    case .StrongpointKurskListeningPost:
        return UIImage(named: "StrongpointKurskListeningPost.png")!
    case .StrongpointKurskTheWindmills:
        return UIImage(named: "StrongpointKurskTheWindmills.png")!
    case .StrongpointKurskYamki:
        return UIImage(named: "StrongpointKurskYamki.png")!
    case .StrongpointKurskOlegsHouse:
        return UIImage(named: "StrongpointKurskOlegsHouse.png")!
    case .StrongpointKurskRudno:
        return UIImage(named: "StrongpointKurskRudno.png")!
    case .StrongpointKurskDestroyedBattery:
        return UIImage(named: "StrongpointKurskDestroyedBattery.png")!
    case .StrongpointKurskTheMuddyChurn:
        return UIImage(named: "StrongpointKurskTheMuddyChurn.png")!
    case .StrongpointKurskRoadToKursk:
        return UIImage(named: "StrongpointKurskRoadToKursk.png")!
    case .StrongpointKurskAmmoDump:
        return UIImage(named: "StrongpointKurskAmmoDump.png")!
    case .StrongpointKurskEasternPosition:
        return UIImage(named: "StrongpointKurskEasternPosition.png")!
    case .StrongpointOmahaBeachBeaumontRoad:
        return UIImage(named: "StrongpointOmahaBeachBeaumontRoad.png")!
    case .StrongpointOmahaBeachCrossroads:
        return UIImage(named: "StrongpointOmahaBeachCrossroads.png")!
    case .StrongpointOmahaBeachLesIsles:
        return UIImage(named: "StrongpointOmahaBeachLesIsles.png")!
    case .StrongpointOmahaBeachRearBattery:
        return UIImage(named: "StrongpointOmahaBeachRearBattery.png")!
    case .StrongpointOmahaBeachChurchRoad:
        return UIImage(named: "StrongpointOmahaBeachChurchRoad.png")!
    case .StrongpointOmahaBeachTheOrchards:
        return UIImage(named: "StrongpointOmahaBeachTheOrchards.png")!
    case .StrongpointOmahaBeachWestVierville:
        return UIImage(named: "StrongpointOmahaBeachWestVierville.png")!
    case .StrongpointOmahaBeachViervilleSurmer:
        return UIImage(named: "StrongpointOmahaBeachViervilleSurMer.png")!
    case .StrongpointOmahaBeachArtilleryBattery:
        return UIImage(named: "StrongpointOmahaBeachArtilleryBattery.png")!
    case .StrongpointOmahaBeachWN73:
        return UIImage(named: "StrongpointOmahaBeachWN73.png")!
    case .StrongpointOmahaBeachWN71:
        return UIImage(named: "StrongpointOmahaBeachWN71.png")!
    case .StrongpointOmahaBeachWN70:
        return UIImage(named: "StrongpointOmahaBeachWN70.png")!
    case .StrongpointOmahaBeachDogGreen:
        return UIImage(named: "StrongpointOmahaBeachDogGreen.png")!
    case .StrongpointOmahaBeachTheDraw:
        return UIImage(named: "StrongpointOmahaBeachTheDraw.png")!
    case .StrongpoinOmahaBeachtDogWhite:
        return UIImage(named: "StrongpointOmahaBeachDogWhite.png")!
    case .StrongpointPurpleHeartLaneBloodyBend:
        return UIImage(named: "StrongpointPurpleHeartLaneBloodyBend.png")!
    case .StrongpointPurpleHeartLaneDeadMansCorner:
        return UIImage(named: "StrongpointPurpleHeartLaneDeadMansCorner.png")!
    case .StrongpointPurpleHeartLaneForwardBattery:
        return UIImage(named: "StrongpointPurpleHeartLaneForwardBattery.png")!
    case .StrongpointPurpleHeartLaneJourdansCanal:
        return UIImage(named: "StrongpointPurpleHeartLaneJourdanCanal.png")!
    case .StrongpointPurpleHeartLaneDouveBridge:
        return UIImage(named: "StrongpointPurpleHeartLaneDouveBridge.png")!
    case .StrongpointPurpleHeartLaneDouveRiverBattery:
        return UIImage(named: "StrongpointPurpleHeartLaneDouveRiverBattery.png")!
    case .StrongpointPurpleHeartLaneGroultPillbox:
        return UIImage(named: "StrongpointPurpleHeartLaneGroultPillbox.png")!
    case .StrongpointPurpleHeartLaneCarentanCauseway:
        return UIImage(named: "StrongpointPurpleHeartLaneCarentanCauseway.png")!
    case .StrongpointPurpleHeartLaneFlakPosition:
        return UIImage(named: "StrongpointPurpleHeartLaneFlakPosition.png")!
    case .StrongpointPurpleHeartLaneMadeleineFarm:
        return UIImage(named: "StrongpointPurpleHeartLaneMadeleineFarm.png")!
    case .StrongpointPurpleHeartLaneMadeleineBridge:
        return UIImage(named: "StrongpointPurpleHeartLaneMadeleineBridge.png")!
    case .StrongpointPurpleHeartLaneAidStation:
        return UIImage(named: "StrongpointPurpleHeartLaneAidStation.png")!
    case .StrongpointPurpleHeartLaneIngoufCrossroads:
        return UIImage(named: "StrongpointPurpleHeartLaneIngoufCrossroads.png")!
    case .StrongpointPurpleHeartLaneRoadToCarentan:
        return UIImage(named: "StrongpointPurpleHeartLaneRoadToCarentan.png")!
    case .StrongpointPurpleHeartLaneCabbagePatch:
        return UIImage(named: "StrongpointPurpleHeartLaneCabbagePatch.png")!
    case .StrongpointRemagenAlteLiebeBarsch:
        return UIImage(named: "StrongpointRemagenAlteLiebeBarsch.png")!
    case .StrongpointRemagenBewaldetKreuzung:
        return UIImage(named: "StrongpointRemagenBewaldetKreuzung.png")!
    case .StrongpointRemagenDanRadart512:
        return UIImage(named: "StrongpointRemagenDanRadart512.png")!
    case .StrongpointRemagenErpel:
        return UIImage(named: "StrongpointRemagenErpel.png")!
    case .StrongpointRemagenErpelerLey:
        return UIImage(named: "StrongpointRemagenErpelerLey.png")!
    case .StrongpointRemagenKasbackOutlook:
        return UIImage(named: "StrongpointRemagenKasbachOutlook.png")!
    case .StrongpointRemagenStSeverinChapen:
        return UIImage(named: "StrongpointRemagenStSeverinChapel.png")!
    case .StrongpointRemagenLudendorffBridge:
        return UIImage(named: "StrongpointRemagenLudendorffBridge.png")!
    case .StrongpointRemagenBauernhofAmRhein:
        return UIImage(named: "StrongpointRemagenBauernhofAmRhein.png")!
    case .StrongpointRemagenRemagen:
        return UIImage(named: "StrongpointRemagenRemagen.png")!
    case .StrongpointRemagenMobelfabrik:
        return UIImage(named: "StrongpointRemagenMobelfabrik.png")!
    case .StrongpointRemagenSchlieffenAusweg:
        return UIImage(named: "StrongpointRemagenSchlieffenAusweg.png")!
    case .StrongpointRemagenWaldburg:
        return UIImage(named: "StrongpointRemagenWaldburg.png")!
    case .StrongpointRemagenMuhlenweg:
        return UIImage(named: "StrongpointRemagenMuhlenweg.png")!
    case .StrongpointRemagenHagelkreuz:
        return UIImage(named: "StrongpointRemagenHagelkreuz.png")!
    case .StrongpointSainteMarieduMontWintersLanding:
        return UIImage(named: "StrongpointSainteMarieduMontWintersLanding.png")!
    case .StrongpointSainteMarieduMontLeGrandChemin:
        return UIImage(named: "StrongpointSainteMarieduMontLeGrandChemin.png")!
    case .StrongpointSainteMarieduMontTheBarn:
        return UIImage(named: "StrongpointSainteMarieduMontTheBarn.png")!
    case .StrongpointSainteMarieduMontBrecourtBattery:
        return UIImage(named: "StrongpointSainteMarieduMontBrecourtBattery.png")!
    case .StrongpointSainteMarieduMontCattlesheds:
        return UIImage(named: "StrongpointSainteMarieduMontCattlesheds.png")!
    case .StrongpointSainteMarieduMontRueDeLaGare:
        return UIImage(named: "StrongpointSainteMarieduMontRueDeLaGare.png")!
    case .StrongpointSainteMarieduMontTheDugout:
        return UIImage(named: "StrongpointSainteMarieduMontTheDugout.png")!
    case .StrongpointSainteMarieduMontAANetwork:
        return UIImage(named: "StrongpointSainteMarieduMontAANetwork.png")!
    case .StrongpointSainteMarieduMontPierresFarm:
        return UIImage(named: "StrongpointSainteMarieduMontPierresFarm.png")!
    case .StrongpointSainteMarieduMontHugosFarm:
        return UIImage(named: "StrongpointSainteMarieduMontHugosFarm.png")!
    case .StrongpointSainteMarieduMontTheHamlet:
        return UIImage(named: "StrongpointSainteMarieduMontTheHamlet.png")!
    case .StrongpointSainteMarieduMontSteMarieDuMont:
        return UIImage(named: "StrongpointSainteMarieduMontSteMarieDuMont.png")!
    case .StrongpointSainteMarieduMontTheCorner:
        return UIImage(named: "StrongpointSainteMarieduMontTheCorner.png")!
    case .StrongpointSainteMarieduMontHill6:
        return UIImage(named: "StrongpointSainteMarieduMontHill6.png")!
    case .StrongpointSainteMarieduMontTheFields:
        return UIImage(named: "StrongpointSainteMarieduMontTheFields.png")!
    case .StrongpointSainteMereEgliseFlakPosition:
        return UIImage(named: "StrongpointSainteMereEgliseFlakPosition.png")!
    case .StrongpointSainteMereEgliseVaulaville:
        return UIImage(named: "StrongpointSainteMereEgliseVaulaville.png")!
    case .StrongpointSainteMereEgliseLaPrairie:
        return UIImage(named: "StrongpointSainteMereEgliseLaPrairie.png")!
    case .StrongpointSainteMereEgliseRouteDuHaras:
        return UIImage(named: "StrongpointSainteMereEgliseRouteDuHaras.png")!
    case .StrongpointSainteMereEgliseWesternApproach:
        return UIImage(named: "StrongpointSainteMereEgliseWesternApproach.png")!
    case .StrongpointSainteMereEgliseRueDeGambosville:
        return UIImage(named: "StrongpointSainteMereEgliseRueDeGambosville.png")!
    case .StrongpointSainteMereEgliseHospice:
        return UIImage(named: "StrongpointSainteMereEgliseHospice.png")!
    case .StrongpointSainteMereEgliseSteMereEglise:
        return UIImage(named: "StrongpointSainteMereEgliseSteMereEglise.png")!
    case .StrongpointSainteMereEgliseCheckpoint:
        return UIImage(named: "StrongpointSainteMereEgliseCheckpoint.png")!
    case .StrongpointSainteMereEgliseArtilleryBattery:
        return UIImage(named: "StrongpointSainteMereEgliseArtilleryBattery.png")!
    case .StrongpointSainteMereEgliseTheCemetary:
        return UIImage(named: "StrongpointSainteMereEgliseTheCemetery.png")!
    case .StrongpointSainteMereEgliseMaisonDuCrique:
        return UIImage(named: "StrongpointSainteMereEgliseMaisonDuCrique.png")!
    case .StrongpointSainteMereEgliseLesVieuxVergers:
        return UIImage(named: "StrongpointSainteMereEgliseLesVieuxVergers.png")!
    case .StrongpointSainteMereEgliseTheDraw:
        return UIImage(named: "StrongpointSainteMereEgliseTheDraw.png")!
    case .StrongpointSainteMereEgliseRusseauDeFerme:
        return UIImage(named: "StrongpointSainteMereEgliseRusseauDeFerme.png")!
    case .StrongpointStalingradMamayevApproach:
        return UIImage(named: "StrongpointStalingradMamayevApproach.png")!
    case .StrongpointStalingradNailFactory:
        return UIImage(named: "StrongpointStalingradNailFactory.png")!
    case .StrongpointStalingradCityOverlook:
        return UIImage(named: "StrongpointStalingradCityOverlook.png")!
    case .StrongpointStalingradDolgiyRavine:
        return UIImage(named: "StrongpointStalingradDolgiyRavine.png")!
    case .StrongpointStalingradYellowHouse:
        return UIImage(named: "StrongpointStalingradYellowHouse.png")!
    case .StrongpointStalingradKomsomolHQ:
        return UIImage(named: "StrongpointStalingradKomsomolHQ.png")!
    case .StrongpointStalingradRailwayCrossing:
        return UIImage(named: "StrongpointStalingradRailwayCrossing.png")!
    case .StrongpointStalingradCarriageDepot:
        return UIImage(named: "StrongpointStalingradCarriageDepot.png")!
    case .StrongpointStalingradTrainStation:
        return UIImage(named: "StrongpointStalingradTrainStation.png")!
    case .StrongpointStalingradHouseOfTheWorkers:
        return UIImage(named: "StrongpointStalingradHouseOfTheWorkers.png")!
    case .StrongpointStalingradPavlovsHouse:
        return UIImage(named: "StrongpointStalingradPavlovsHouse.png")!
    case .StrongpointStalingradTheBrewery:
        return UIImage(named: "StrongpointStalingradTheBrewery.png")!
    case .StrongpointStalingradLShapedHouse:
        return UIImage(named: "StrongpointStalingradLShapedHouse.png")!
    case .StrongpointStalingradGrudininsMill:
        return UIImage(named: "StrongpointStalingradGrudininsMill.png")!
    case .StrongpointStalingradVolgaBanks:
        return UIImage(named: "StrongpointStalingradVolgaBanks.png")!
    case .StrongpointUtahBeachMammutRadar:
        return UIImage(named: "StrongpointUtahBeachMammutRadar.png")!
    case .StrongpointUtahBeachFloodedHouse:
        return UIImage(named: "StrongpointUtahBeachFloodedHouse.png")!
    case .StrongpointUtahBeachSainteMarieApproach:
        return UIImage(named: "StrongpointUtahBeachSainteMarieApproach.png")!
    case .StrongpointUtahBeachSunkenBridge:
        return UIImage(named: "StrongpointUtahBeachSunkenBridge.png")!
    case .StrongpointUtahBeachLaGrandeCrique:
        return UIImage(named: "StrongpointUtahBeachLaGrandeCrique.png")!
    case .StrongpointUtahBeachDrownedFields:
        return UIImage(named: "StrongpointUtahBeachDrownedFields.png")!
    case .StrongpointUtahBeachWN4:
        return UIImage(named: "StrongpointUtahBeachWN4.png")!
    case .StrongpointUtahBeachTheChapel:
        return UIImage(named: "StrongpointUtahBeachTheChapel.png")!
    case .StrongpointUtahBeachWN7:
        return UIImage(named: "StrongpointUtahBeachWN7.png")!
    case .StrongpointUtahBeachAABattery:
        return UIImage(named: "StrongpointUtahBeachAABattery.png")!
    case .StrongpointUtahBeachHill5:
        return UIImage(named: "StrongpointUtahBeachHill5.png")!
    case .StrongpointUtahBeachWN5:
        return UIImage(named: "StrongpointUtahBeachWN5.png")!
    case .StrongpointUtahBeachTareGreen:
        return UIImage(named: "StrongpointUtahBeachTareGreen.png")!
    case .StrongpointUtahBeachRedRoofHouse:
        return UIImage(named: "StrongpointUtahBeachRedRoofHouse.png")!
    case .StrongpointUtahBeachUncleRed:
        return UIImage(named: "StrongpointUtahBeachUncleRed.png")!
    }
}
