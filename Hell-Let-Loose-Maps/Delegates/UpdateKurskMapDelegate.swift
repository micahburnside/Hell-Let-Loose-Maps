//
//  UpdateKurskMapDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/2/22.
//

import Foundation
import UIKit

protocol UpdateKurskMapDelegate {
    func removeKurskArtilleryPosition()
    func removeKurskGrushki()
    func removeKurskGrushkiFlank()
    func removeKurskPanzersEnd()
    func removeKurskDefenceInDepth()
    func removeKurskListeningPost()
    func removeKurskTheWindmills()
    func removeKurskYamki()
    func removeKurskOlegsHouse()
    func removeKurskRudno()
    func removeKurskDestroyedBattery()
    func removeKurskTheMuddyChurn()
    func removeKurskRoadToKursk()
    func removeKurskAmmoDump()
    func removeKurskEasternPosition()
    func loadKurskArtilleryPosition()
    func loadKurskGrushki()
    func loadKurskGrushkiFlank()
    func loadKurskPanzersEnd()
    func loadKurskDefenceInDepth()
    func loadKurskListeningPost()
    func loadKurskTheWindmills()
    func loadKurskYamki()
    func loadKurskOlegsHouse()
    func loadKurskRudno()
    func loadKurskDestroyedBattery()
    func loadKurskTheMuddyChurn()
    func loadKurskRoadToKursk()
    func loadKurskAmmoDump()
    func loadKurskEasternPosition()
}
