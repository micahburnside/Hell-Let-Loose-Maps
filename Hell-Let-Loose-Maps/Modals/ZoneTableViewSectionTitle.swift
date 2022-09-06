//
//  ZoneTableViewSection.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/3/22.
//

import Foundation
import UIKit

enum ZoneTableViewSection: String, CaseIterable {
    case SectionTitleZone1
    case SectionTitleZone2
    case SectionTitleZone3
    case SectionTitleZone4
    case SectionTitleZone5
//
//    var description: String {
//        switch self {
//        case .SectionTitleZone1:
//            return "SectionTitleZone1"
//        case .SectionTitleZone2:
//            return "SectionTitleZone2"
//        case .SectionTitleZone3:
//            return "SectionTitleZone3"
//        case .SectionTitleZone4:
//            return "SectionTitleZone4"
//        case .SectionTitleZone5:
//            return "SectionTitleZone5"
//        }
//    }
//
    
    func zone1() {
        let zone = Self.SectionTitleZone1.rawValue
        let zoneInit = Self.init(rawValue: "SectionTitleZone\(1)")
    }
    
    func zone2() {
        let zone = Self.SectionTitleZone2.rawValue
        let zoneInit = Self.init(rawValue: "SectionTitleZone\(2)")
    }
    
    func zone3() {
        let zone = Self.SectionTitleZone3.rawValue
        let zoneInit = Self.init(rawValue: "SectionTitleZone\(3)")
    }
    
    func zone4() {
        let zone = Self.SectionTitleZone4.rawValue
        let zoneInit = Self.init(rawValue: "SectionTitleZone\(4)")
    }
    
    func zone5() {
        let zone = Self.SectionTitleZone5.rawValue
        let zoneInit = Self.init(rawValue: "SectionTitleZone\(5)")
    }
}
