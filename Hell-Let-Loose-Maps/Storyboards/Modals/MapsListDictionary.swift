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
        "Carentan" : "America vs Germany",
        "Foy" : "America vs Germany",
        "Hill 400" : "America vs Germany",
        "Hürtgen Forest" : "America vs Germany",
        "Kursk" : "Germany vs Soviet Union",
        "Omaha Beach" : "America vs Germany",
        "Purple Heart Lane" : "America vs Germany",
        "Remagen" : "America vs Germany",
        "Sainte Marie du Mont" : "America vs Germany",
        "Sainte Mère Église" : "America vs Germany",
        "Stalingrad" : "Germany vs Soviet Union",
        "Utah Beach" : "America vs Germay",
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
    
    
}
