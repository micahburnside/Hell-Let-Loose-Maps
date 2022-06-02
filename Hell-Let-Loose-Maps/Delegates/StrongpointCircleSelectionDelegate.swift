//
//  StrongpointCircleSelectionDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol StrongpointCircleSelectionDelegate {
    func getStrongpointCircle(strongpointCirlce: StrongpointCircle) -> UIImage
}

public enum StrongpointCircle {
    case StrongpointCircle1, StrongpointCircle2, StrongpointCircle3, StrongpointCircle4
}

func getStrongpointCircle(strongpointCirlce: StrongpointCircle) -> UIImage {
    switch strongpointCirlce {
    case .StrongpointCircle1:
        return UIImage(named: "StrongpointCircle1.png")!
    case .StrongpointCircle2:
        return UIImage(named: "StrongpointCircle2.png")!
    case .StrongpointCircle3:
        return UIImage(named: "StrongpointCircle3.png")!
    case .StrongpointCircle4:
        return UIImage(named: "StrongpointCircle4.png")!
    }
}
