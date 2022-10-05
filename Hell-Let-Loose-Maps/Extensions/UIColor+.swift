//
//  UIColor+.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/2/22.
//

import Foundation
import UIKit

extension UIColor{
    class func getFriendlyBlue() -> UIColor {
        return UIColor(red:67/255, green:150/255 ,blue:206/255 , alpha:0.14)
    }
    class func getEnemyRed() -> UIColor {
        return UIColor(red:255/255, green:0/255 ,blue:0/255 , alpha:0.14)
    }
    class func getNeutralWhite() -> UIColor {
        return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.14)
    }
}
