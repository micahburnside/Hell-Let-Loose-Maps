//
//  UserDefaultsManager.swift
//  HLL Maps
//
//  Created by Micah Burnside on 5/31/22.
//

import Foundation
import UIKit

class StoredData: NSObject {
    static let shared = StoredData()

    /// Get toggle switch state from User Defaults
    func getToggleSwitchState(switchKey: ToggleSwitchKeys) -> String {
        return UserDefaults.standard.string(forKey: switchKey.rawValue) ?? ""
    }
    
    /// Save user switch selection choice for ON
    func setToggleSwitchOn(switchKey: ToggleSwitchKeys) {
        UserDefaults.standard.set(switchKey, forKey: ToggleSwitchKeys.IS_ON.rawValue)
    }
    
    /// Save user switch selection choice for OFF
    func setToggleSwitchOff(switchKey: ToggleSwitchKeys) {
        UserDefaults.standard.set(switchKey, forKey: ToggleSwitchKeys.IS_OFF.rawValue)
    }
    
    /// Toggle Switch settings
    enum ToggleSwitchKeys: String {
        case IS_ON, IS_OFF
    }

}
