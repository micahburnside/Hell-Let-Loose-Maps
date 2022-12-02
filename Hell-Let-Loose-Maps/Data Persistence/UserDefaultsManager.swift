//
//  UserDefaultsManager.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/31/22.
//

import Foundation
import UIKit
import CoreData

class StoredData: NSObject {
//    let toggleStates = ["ADD_STRONGPOINT": true, "REMOVE_STRONGPOINT": false]
//    struct ToggleSwitchState: Codable {
//        var isOn: Bool
//    }
    
    static let shared = StoredData()
    
    var coreDataContext: NSManagedObjectContext? {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return nil
        }
        
        return delegate.persistentContainer.viewContext
    }

    /// Get toggle switch state from User Defaults
    func getToggleState(switchKey: ToggleSwitchKeys) -> Bool {
       return  UserDefaults.standard.bool(forKey: switchKey.rawValue)
    }
    
    func setToggleState(switchKey: ToggleSwitchKeys, isOn: Bool) {
        // set
        UserDefaults.standard.setValue(isOn, forKey: switchKey.rawValue)
    }

    /// Toggle Switch settings
    enum ToggleSwitchKeys: String {
        case REMOVE_STRONGPOINT,
             ADD_STRONGPOINT,
             STRONGPOINT_BLACTOT,
             STRONGPOINT_502NDSTART,
             STRONGPOINT_FARMRUINS,
             STRONGPOINT_PUMPINGSTATION,
             STRONGPOINT_RUINS,
             STRONGPOINT_DERAILEDTRAIN,
             STRONGPOINT_CANALCROSSING,
             STRONGPOINT_TOWNCENTER,
             STRONGPOINT_TRAINSTATION,
             STRONGPOINT_CUSTOMS,
             STRONGPOINT_RAILCROSSING,
             STRONGPOINT_MOUNTHALAIS,
             STRONGPOINT_CANALLOCKS,
             STRONGPOINT_RAILCAUSEWAY,
             STRONGPOINT_LAMAISONDESORMES,
             STRONGPOINT_FOY_ROADTORECOGNE,
             STRONGPOINT_FOY_COBRUAPPROACH,
             STRONGPOINT_FOY_ROADTONOVILLE,
             STRONGPOINT_FOY_COBRU_FACTORY,
             STRONGPOINT_FOY_FOY,
             STRONGPOINT_FOY_FLAKBATTERY,
             STRONGPOINT_FOY_WESTBEND,
             STRONGPOINT_FOY_SOUTHERNEDGE,
             STRONGPOINT_FOY_DUGOUTBARN,
             STRONGPOINT_FOY_N30HIGHWAY,
             STRONGPOINT_FOY_BIZORYFOYROAD,
             STRONGPOINT_FOY_EASTERN_OURTHE,
             STRONGPOINT_FOY_ROADTOBASTOGNE,
             STRONGPOINT_FOY_BOISJACUES,
             STRONGPOINT_FOY_FORESTOUTSKIRTS,
             STRONGPOINT_HILL400_CONVOYAMBUSH,
             STRONGPOINT_HILL400_FEDERCHECKEJUNCTION,
             STRONGPOINT_HILL400_STUCKCHENFARM,
             STRONGPOINT_HILL400_ROERRIVERHOUSE,
             STRONGPOINT_HILL400_BERGSTEINCHURCH,
             STRONGPOINT_HILL400_KIRCHWEG,
             STRONGPOINT_HILL400_FLAKPITS,
             STRONGPOINT_HILL400_HILL400,
             STRONGPOINT_HILL400_SOUTHERNAPPROACH,
             STRONGPOINT_HILL400_ESELSWEG_JUNCTION,
             STRONGPOINT_HILL400_EASTERNSLOPE,
             STRONGPOINT_HILL400_TRAINWRECK,
             STRONGPOINT_HILL400_ROERRIVERCROSSING,
             STRONGPOINT_HILL400_ZERKALL,
             STRONGPOINT_HILL400_PAPERMILL,
             STRONGPOINT_HURTGENFOREST_THEMASBAUCHAPPROACH,
             STRONGPOINT_HURTGENFOREST_RESERVESTATION,
             STRONGPOINT_HURTGENFOREST_LUMBERYARD,
             STRONGPOINT_HURTGENFOREST_WEHEBACHOVERLOOK,
             STRONGPOINT_HURTGENFOREST_KALLTRAIL,
             STRONGPOINT_HURTGENFOREST_THERUIN,
             STRONGPOINT_HURTGENFOREST_NORTHPASS,
             STRONGPOINT_HURTGENFOREST_THESCAR,
             STRONGPOINT_HURTGENFOREST_THESIEGFRIEDLINE,
             STRONGPOINT_HURTGENFOREST_HILL15,
             STRONGPOINT_HURTGENFOREST_JACOBSBARN,
             STRONGPOINT_HURTGENFOREST_SALIENT42,
             STRONGPOINT_HURTGENFOREST_GROSSHAUAPPROACH,
             STRONGPOINT_HURTGENFOREST_HURTGENAPPROACH,
             STRONGPOINT_HURTGENFOREST_LOGGINGCAMP,
             STRONGPOINT_KHARKOV_MARSHTOWN,
             STRONGPOINT_KHARKOV_SOVIETVANTAGEPOINT,
             STRONGPOINT_KHARKOV_GERMANFUELDUMP,
             STRONGPOINT_KHARKOV_BITTERSPRING,
             STRONGPOINT_KHARKOV_LUMBERWORKS,
             STRONGPOINT_KHARKOV_WINDMILLHILLSIDE,
             STRONGPOINT_KHARKOV_WATERMILL,
             STRONGPOINT_KHARKOV_STMARY,
             STRONGPOINT_KHARKOV_DISTILLERY,
             STRONGPOINT_KHARKOV_RIVERCROSSING,
             STRONGPOINT_KHARKOV_BELGORODOUTSKIRTS,
             STRONGPOINT_KHARKOV_LUMBERYARD,
             STRONGPOINT_KHARKOV_WEHRMACHTOVERLOOK,
             STRONGPOINT_KHARKOV_HAYSTORAGE,
             STRONGPOINT_KHARKOV_OVERPASS,
             STRONGPOINT_KURSK_ARTILLERYPOSITION,
             STRONGPOINT_KURSK_GRUSHKI,
             STRONGPOINT_KURSK_GRUSHKIFLANK,
             STRONGPOINT_KURSK_PANZERSEND,
             STRONGPOINT_KURSK_DEFENCEINDEPTH,
             STRONGPOINT_KURSK_LISTENINGPOST,
             STRONGPOINT_KURSK_THEWINDMILLS,
             STRONGPOINT_KURSK_YAMKI,
             STRONGPOINT_KURSK_OLEGSHOUSE,
             STRONGPOINT_KURSK_RUDNO,
             STRONGPOINT_KURSK_DESTROYEDBATTERY,
             STRONGPOINT_KURSK_THEMUDDYCHURN,
             STRONGPOINT_KURSK_ROADTOKURSK,
             STRONGPOINT_KURSK_AMMODUMP,
             STRONGPOINT_KURSK_EASTERNPOSITION,
             STRONGPOINT_OMAHABEACH_BEAUMONTROAD,
             STRONGPOINT_OMAHABEACH_CROSSROADS,
             STRONGPOINT_OMAHABEACH_LESISLES,
             STRONGPOINT_OMAHABEACH_REARBATTERY,
             STRONGPOINT_OMAHABEACH_CHURCHROAD,
             STRONGPOINT_OMAHABEACH_THEORCHARDS,
             STRONGPOINT_OMAHABEACH_WESTVIERVILLE,
             STRONGPOINT_OMAHABEACH_VIERVILLESURMER,
             STRONGPOINT_OMAHABEACH_ARTILLERYBATTERY,
             STRONGPOINT_OMAHABEACH_WN73,
             STRONGPOINT_OMAHABEACH_WN71,
             STRONGPOINT_OMAHABEACH_WN70,
             STRONGPOINT_OMAHABEACH_DOGGREEN,
             STRONGPOINT_OMAHABEACH_THEDRAW,
             STRONGPOINT_OMAHABEACH_DOGWHITE,
             STRONGPOINT_PURPLEHEARTLANE_BLOODYBEND,
             STRONGPOINT_PURPLEHEARTLANE_DEADMANSCORNER,
             STRONGPOINT_PURPLEHEARTLANE_FORWARDBATTERY,
             STRONGPOINT_PURPLEHEARTLANE_JOURDANCANAL,
             STRONGPOINT_PURPLEHEARTLANE_DOUVEBRIDGE,
             STRONGPOINT_PURPLEHEARTLANE_RIVERBATTERY,
             STRONGPOINT_PURPLEHEARTLANE_GROULTPILLBOX,
             STRONGPOINT_PURPLEHEARTLANE_CARENTANCAUSEWAY,
             STRONGPOINT_PURPLEHEARTLANE_FLAKPOSITION,
             STRONGPOINT_PURPLEHEARTLANE_MADELEINEFARM,
             STRONGPOINT_PURPLEHEARTLANE_MADELEINEBRIDGE,
             STRONGPOINT_PURPLEHEARTLANE_AIDSTATION,
             STRONGPOINT_PURPLEHEARTLANE_INGOUFCROSSROADS,
             STRONGPOINT_PURPLEHEARTLANE_ROADTOCARENTAN,
             STRONGPOINT_PURPLEHEARTLANE_CABBAGEPATCH,
             STRONGPOINT_REMAGEN_ALTELIEBEBARSCH,
             STRONGPOINT_REMAGEN_BEWALDETKREUZUNG,
             STRONGPOINT_REMAGEN_DANRADART512,
             STRONGPOINT_REMAGEN_ERPEL,
             STRONGPOINT_REMAGEN_ERPELERLEY,
             STRONGPOINT_REMAGEN_KASBACHOVERLOOK,
             STRONGPOINT_REMAGEN_STSEVERINCHAPEL,
             STRONGPOINT_REMAGEN_LUDENDORFFBRIDGE,
             STRONGPOINT_REMAGEN_BAUERNHOFAMRHEIN,
             STRONGPOINT_REMAGEN_REMAGEN,
             STRONGPOINT_REMAGEN_MOBELFABRIK,
             STRONGPOINT_REMAGEN_SCHLIEFFENAUSWEG,
             STRONGPOINT_REMAGEN_WALDBURG,
             STRONGPOINT_REMAGEN_MUHLENWEG,
             STRONGPOINT_REMAGEN_HAGELKREUZUNG,
             STRONGPOINT_SAINTEMARIEDUMONT_WINTERSLANDING,
             STRONGPOINT_SAINTEMARIEDUMONT_LEGRANDECHEMIN,
             STRONGPOINT_SAINTEMARIEDUMONT_THEBARN,
             STRONGPOINT_SAINTEMARIEDUMONT_BRECOURTBATTERY,
             STRONGPOINT_SAINTEMARIEDUMONT_CATTLESHEDS,
             STRONGPOINT_SAINTEMARIEDUMONT_RUEDELAGARE,
             STRONGPOINT_SAINTEMARIEDUMONT_THEDUGOUT,
             STRONGPOINT_SAINTEMARIEDUMONT_AANETWORK,
             STRONGPOINT_SAINTEMARIEDUMONT_PIERRESFARM,
             STRONGPOINT_SAINTEMARIEDUMONT_HUGOSFARM,
             STRONGPOINT_SAINTEMARIEDUMONT_THEHAMLET,
             STRONGPOINT_SAINTEMARIEDUMONT_STEMARIEDUMONT,
             STRONGPOINT_SAINTEMARIEDUMONT_THECORNER,
             STRONGPOINT_SAINTEMARIEDUMONT_HILL6,
             STRONGPOINT_SAINTEMARIEDUMONT_THEFIELDS,
             STRONGPOINT_SAINTEMEREEGLISE_FLAKPOSITION,
             STRONGPOINT_SAINTEMEREEGLISE_VAULAVILLE,
             STRONGPOINT_SAINTEMEREEGLISE_LAPRAIRIE,
             STRONGPOINT_SAINTEMEREEGLISE_ROUTEDUHARAS,
             STRONGPOINT_SAINTEMEREEGLISE_WESTERNAPPROACH,
             STRONGPOINT_SAINTEMEREEGLISE_RUEDEGAMBOSVILLE,
             STRONGPOINT_SAINTEMEREEGLISE_HOSPICE,
             STRONGPOINT_SAINTEMEREEGLISE_STEMEREEGLISE,
             STRONGPOINT_SAINTEMEREEGLISE_CHECKPOINT,
             STRONGPOINT_SAINTEMEREEGLISE_ARTILLERYBATTERY,
             STRONGPOINT_SAINTEMEREEGLISE_THECEMETERY,
             STRONGPOINT_SAINTEMEREEGLISE_MAISONDUCRIQUE,
             STRONGPOINT_SAINTEMEREEGLISE_LESVIEUXVERGERS,
             STRONGPOINT_SAINTEMEREEGLISE_THEDRAW,
             STRONGPOINT_SAINTEMEREEGLISE_RUSSEAUDEFERME,
             STRONGPOINT_STALINGRAD_MAMAYEVAPPROACH,
             STRONGPOINT_STALINGRAD_NAILFACTORY,
             STRONGPOINT_STALINGRAD_CITYOVERLOOK,
             STRONGPOINT_STALINGRAD_DOLGIYRAVINE,
             STRONGPOINT_STALINGRAD_YELLOWHOUSE,
             STRONGPOINT_STALINGRAD_KOMSOMOLHQ,
             STRONGPOINT_STALINGRAD_RAILWAYCROSSING,
             STRONGPOINT_STALINGRAD_CARRIAGEDEPOT,
             STRONGPOINT_STALINGRAD_TRAINSTATION,
             STRONGPOINT_STALINGRAD_HOUSEOFTHEWORKERS,
             STRONGPOINT_STALINGRAD_PAVLOVSHOUSE,
             STRONGPOINT_STALINGRAD_THEBREWERY,
             STRONGPOINT_STALINGRAD_LSHAPEDHOUSE,
             STRONGPOINT_STALINGRAD_GRUDININSMILL,
             STRONGPOINT_STALINGRAD_VOLGABANKS,
             STRONGPOINT_UTAHBEACH_MAMMUTRADAR,
             STRONGPOINT_UTAHBEACH_FLOODEDHOUSE,
             STRONGPOINT_UTAHBEACH_SAINTEMARIEAPPROACH,
             STRONGPOINT_UTAHBEACH_SUNKENBRIDGE,
             STRONGPOINT_UTAHBEACH_LAGRANDECRIQUE,
             STRONGPOINT_UTAHBEACH_DROWNEDFIELDS,
             STRONGPOINT_UTAHBEACH_WN4,
             STRONGPOINT_UTAHBEACH_THECHAPEL,
             STRONGPOINT_UTAHBEACH_WN7,
             STRONGPOINT_UTAHBEACH_AABATTERY,
             STRONGPOINT_UTAHBEACH_HILL5,
             STRONGPOINT_UTAHBEACH_WN5,
             STRONGPOINT_UTAHBEACH_TAREGREEN,
             STRONGPOINT_UTAHBEACH_REDROOFHOUSE,
             STRONGPOINT_UTAHBEACH_UNCLERED
                         
    }
    
    func createMap(map: MapName) throws -> Map {
        guard let coreDataContext = coreDataContext else {
            throw NSError(domain: "error loading context", code: 500)
        }
        
        if let existingMap = fetchMap(map: map) {
            return existingMap
        }

        let newMap = Map(context: coreDataContext)
        newMap.name = map.rawValue
        
        let _ = try? coreDataContext.save()
        return newMap
    }
    
    func fetchMap(map: MapName) -> Map? {
        guard let coreDataContext = coreDataContext else {
            
            return nil
        }

        let fetch = Map.fetchRequest()
        fetch.predicate = NSPredicate(format: "name == %@", map.rawValue)
        fetch.returnsObjectsAsFaults = false
        
        if let map = try? coreDataContext.fetch(fetch).first {
            return map
        }
        
        return nil
    }
    
    func test() {
        guard let coreDataContext = coreDataContext else {
            return
        }
        //BOOM
        let map = try?  StoredData.shared.createMap(map: .Carentan)
        map?.name = "name"
        
        let strongpoint = StrongPoint(context: coreDataContext)
        strongpoint.map = map
        
        // should show whatver....
        strongpoint.isEnabled = false
        
        map?.addToStrongpoints(strongpoint)
        
//        map.strongpoints?.allObjects as? [StrongPoint]
        
        // save map and strong points
        let _ = try? coreDataContext.save()
    }

}
