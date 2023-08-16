//
//  MapsListDictionary.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import Foundation

struct MapsListDictionary {
    
    let mapTypesDictionary: [String : String] = [
        "BaseLayers" : "Base layer map without overlay",
        "TACs" : "Map with grid overlay",
        "Strongpoints" : "TAC map with strongpoints overlay",

    ]
    
    let mapsListDictionary: [String : String] = [
        "Carentan" : "United States vs Germany",
        "Driel" : "Great Britain vs Germany",
        "El Alamein" : "Great Britain vs Germany",
        "Foy" : "United States vs Germany",
        "Hill 400" : "United States vs Germany",
        "Hürtgen Forest" : "United States vs Germany",
        "Kharkov" : "Germany vs Soviet Union",
        "Kursk" : "Germany vs Soviet Union",
        "Omaha Beach" : "United States vs Germany",
        "Purple Heart Lane" : "United States vs Germany",
        "Remagen" : "United States vs Germany",
        "Sainte Marie du Mont" : "United States vs Germany",
        "Sainte Mère Église" : "United States vs Germany",
        "Stalingrad" : "Germany vs Soviet Union",
        "Utah Beach" : "United States vs Germay",
    ]

    let carentanStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Blactot" : "",
        "2 - 502nd Start" : "",
        "3 - Farm Ruins" : "",
        "4 - PumpingStation" : "",
        "5 - Ruins" : "",
        "6 - Derailed Train" : "",
        "7 - Canal Crossing" : "",
        "8 - Town Center" : "",
        "9 - Train Station" : "",
        "10 - Customs" : "",
        "11 - Rail Crossing" : "",
        "12 - Mount Halais" : "",
        "13 - Canal Locks" : "",
        "14 - Rail Causeway" : "",
        "15 - La Maison Des Ormes" : ""
    ]
    
    let drielStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Osterbeek Approach" : "",
        "2 - Roseander Polder" : "",
        "3 - Kasteel Rosande" : "",
        "4 - Boatyard" : "",
        "5 - Bridgeway" : "",
        "6 - Rijn Banks" : "",
        "7 - Brick Factory" : "",
        "8 - Railway Bridge" : "",
        "9 - Gun Emplacements" : "",
        "10 - Rietveld" : "",
        "11 - South Railway" : "",
        "12 - MiddelRoad" : "",
        "13 - Orchards" : "",
        "14 - Schaduwwolken Farm" : "",
        "15 - Fields" : ""
    ]
    
    let elAlameinStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Vehicle Depot" : "",
        "2 - Artillery Guns" : "",
        "3 - MiteiriyaRidge" : "",
        "4 - Hamlet Ruins" : "",
        "5 - El Mreir" : "",
        "6 - Watchtower" : "",
        "7 - Desert Rat Trenches" : "",
        "8 - Oasis" : "",
        "9 - Valley" : "",
        "10 - Fuel Depot" : "",
        "11 - Airfield Command" : "",
        "12 - Airfield Hangars" : "",
        "13 - Cliffside Village" : "",
        "14 - Ambushed Convoy" : "",
        "15 - Quarry" : ""
    ]
    
    let FoyStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Road To Recogne" : "",
        "2 - Cobru Approach" : "",
        "3 - Road To Noville" : "",
        "4 - Cobru Factory" : "",
        "5 - Foy" : "",
        "6 - Flak Battery" : "",
        "7 - West Bend" : "",
        "8 - Southern Edge" : "",
        "9 - Dugout Barn" : "",
        "10 - N30 Highway" : "",
        "11 - Bizory Foy Road" : "",
        "12 - Eastern Ourthe" : "",
        "13 - Road To Bastogne" : "",
        "14 - Bois Jacques" : "",
        "15 - Forest Outskirts" : ""
    ]
    
    let Hill400StrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Convoy Ambush" : "",
        "2 - Federchecke Junction" : "",
        "3 - Stuckchen Farm" : "",
        "4 - Roer River House" : "",
        "5 - Bergstein Church" : "",
        "6 - Kirchweg" : "",
        "7 - Flak Pits" : "",
        "8 - Hill 400" : "",
        "9 - Southern Approach" : "",
        "10 - Eselsweg Junction" : "",
        "11 - Eastern Slope" : "",
        "12 - Trainwreck" : "",
        "13 - Roer River Crossing" : "",
        "14 - Zerkall" : "",
        "15 - PaperMill" : ""
    ]
    
    let HurtgenForestStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - The Masbauch Approach" : "",
        "2 - Reserve Station" : "",
        "3 - Lumber Yard" : "",
        "4 - Wehebach Overlook" : "",
        "5 - Kall Trail" : "",
        "6 - The Ruin" : "",
        "7 - North Pass" : "",
        "8 - The Scar" : "",
        "9 - The Siegfried Line" : "",
        "10 - Hill 15" : "",
        "11 - Jacob's Barn" : "",
        "12 - Salient 42" : "",
        "13 - Grosshau Approach" : "",
        "14 - Hürtgen Approach" : "",
        "15 - Logging Camp" : ""
    ]
    
    let KharkovStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Marsh Town" : "",
        "2 - Soviet Vantage Point" : "",
        "3 - German Fuel Dump" : "",
        "4 - Bitter Spring" : "",
        "5 - Lumber Works" : "",
        "6 - Windmill Hillside" : "",
        "7 - Water Mill" : "",
        "8 - St Mary" : "",
        "9 - Distillery" : "",
        "10 - River Crossing" : "",
        "11 - Belgorod Outskirts" : "",
        "12 - Lumberyard" : "",
        "13 - Wehrmacht Overlook" : "",
        "14 - Hay Storage" : "",
        "15 - Overpass" : ""
    ]
    
    let KurskStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Artillery Position" : "",
        "2 - Grushki" : "",
        "3 - Grushki Flank" : "",
        "4 - Panzer's End" : "",
        "5 - Defence In Depth" : "",
        "6 - Listening Post" : "",
        "7 - The Windmills" : "",
        "8 - Yamki" : "",
        "9 - Oleg's House" : "",
        "10 - Rudno" : "",
        "11 - Destroyed Battery" : "",
        "12 - The Muddy Churn" : "",
        "13 - Road To Kursk" : "",
        "14 - Ammo Dump" : "",
        "15 - Eastern Position" : ""
    ]
    
    let OmahaBeachStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Beaumont Road" : "",
        "2 - Crossroads" : "",
        "3 - Les Isles" : "",
        "4 - Rear Battery" : "",
        "5 - Church Road" : "",
        "6 - The Orchards" : "",
        "7 - West Vierville" : "",
        "8 - Vierville Sur Mer" : "",
        "9 - Artillery Battery" : "",
        "10 - WN73" : "",
        "11 - WN71" : "",
        "12 - WN70" : "",
        "13 - Dog Green" : "",
        "14 - The Draw" : "",
        "15 - Dog White" : ""
    ]
    
    let RemagenStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Alte Liebe Barsch" : "",
        "2 - Bewaldet Kreuzung" : "",
        "3 - Dan Radart 512" : "",
        "4 - Erpel" : "",
        "5 - Erpeler Ley" : "",
        "6 - Kasbach Outlook" : "",
        "7 - St Severin Chapel" : "",
        "8 - Ludendorff Bridge" : "",
        "9 - Bauernhof Am Rhein" : "",
        "10 - Remagen" : "",
        "11 - Mobelfabrik" : "",
        "12 - SchlieffenAusweg" : "",
        "13 - Waldburg" : "",
        "14 - Muhlenweg" : "",
        "15 - Hagelkreuz" : ""
    ]
    
    let SainteMereEgliseStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Flak Position" : "",
        "2 - Vaulaville" : "",
        "3 - La Prairie" : "",
        "4 - Route Du Haras" : "",
        "5 - Western Approach" : "",
        "6 - Rue De Gambosville" : "",
        "7 - Hospice" : "",
        "8 - Ste Mere Eglise" : "",
        "9 - Checkpoint" : "",
        "10 - Artillery Battery" : "",
        "11 - The Cemetery" : "",
        "12 - Maison Du Crique" : "",
        "13 - Les Vieux Vergers" : "",
        "14 - Cross Roads" : "",
        "15 - Russeau De Ferme" : ""
    ]
    
    let SainteMarieduMontStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Winters Landing" : "",
        "2 - Le Grand Chemin" : "",
        "3 - The Barn" : "",
        "4 - Brecourt Battery" : "",
        "5 - Cattlesheds" : "",
        "6 - Rue De La Gare" : "",
        "7 - The Dugout" : "",
        "8 - AA Network" : "",
        "9 - Pierre's Farm" : "",
        "10 - Hugo's Farm" : "",
        "11 - The Hamlet" : "",
        "12 - Ste Marie Du Mont" : "",
        "13 - The Corner" : "",
        "14 - Hill 6" : "",
        "15 - The Fields" : ""
    ]
    
    let StalingradStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Mamayev Approach" : "",
        "2 - Nail Factory" : "",
        "3 - City Overlook" : "",
        "4 - Dolgiy Ravine" : "",
        "5 - Yellow House" : "",
        "6 - Komsomol HQ" : "",
        "7 - Railway Crossing" : "",
        "8 - Carriage Depot" : "",
        "9 - Train Station" : "",
        "10 - House Of The Workers" : "",
        "11 - Pavlov's House" : "",
        "12 - The Brewery" : "",
        "13 - L Shaped House" : "",
        "14 - Grudinin's Mill" : "",
        "15 - Volga Banks" : ""
    ]
    
    let UtahBeachStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Mammut Radar" : "",
        "2 - Flooded House" : "",
        "3 - Sainte Marie Approach" : "",
        "4 - Sunken Bridge" : "",
        "5 - La Grande Crique" : "",
        "6 - Drowned Fields" : "",
        "7 - WN4" : "",
        "8 - The Chapel" : "",
        "9 - WN7" : "",
        "10 - AABattery" : "",
        "11 - Hill 5" : "",
        "12 - WN5" : "",
        "13 - Tare Green" : "",
        "14 - Red Roof House" : "",
        "15 - Uncle Red" : ""
    ]
    
    let PurpleHeartLaneStrongpointsDictionary: [String : String] = [
//        "TAC" : "displays grid lines on top of base layer",
//        "Strongpoints" : "displays strongpoints",
        "1 - Bloody Bend" : "",
        "2 - Dead Man's Corner" : "",
        "3 - Forward Battery" : "",
        "4 - Jourdan Canal" : "",
        "5 - Douve Bridge" : "",
        "6 - Douve River Battery" : "",
        "7 - Groult Pillbox" : "",
        "8 - Carentan Causeway" : "",
        "9 - Flak Position" : "",
        "10 - Madeleine Farm" : "",
        "11 - Madeleine Bridge" : "",
        "12 - Aid Station" : "",
        "13 - Ingouf Crossroads" : "",
        "14 - Road To Carentan" : "",
        "15 - Cabbage Patch" : ""
    ]
    
}
