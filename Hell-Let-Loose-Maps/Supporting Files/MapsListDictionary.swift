//
//  MapsListDictionary.swift
//  Help Let Loose
//
//  Created by Micah Burnside on 4/29/22.
//

import Foundation

struct MapsListDictionary {
    
    let mapTypesDictionary: [String : String] = [
        "Base Layers" : "Base layer map without overlay",
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
        "Utah Beach" : "America vs Germay"
        
    ]

}
