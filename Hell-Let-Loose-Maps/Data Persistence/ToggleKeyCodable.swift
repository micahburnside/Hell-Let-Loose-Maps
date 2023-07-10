//
//  ToggleKeyCodable.swift
//  HLL Maps
//
//  Created by Micah Burnside on 12/8/22.
//

import Foundation

class ToggleKeyCodable: Codable {
    let name: String
    var active: Bool = true
    
    class func saveMap(list: [ToggleKeyCodable]) {
        guard let json = try? JSONEncoder().encode(list) else {
            print("failed to save list")
            return
        }
        
        UserDefaults.standard.set(json, forKey: "keyMap")
    }
    
}
/// make json list
/// {
/// "strongpointFarmRuins":"true"

///}
//
//
//[
//    {
//        "name": "map name",
//        "active": false
//    },
//        {
//        "name": "map name1",
//        "active": true
//    },
//]
