//
//  CaptureStatusDelegate.swift
//  HLL Maps
//
//  Created by Micah Burnside on 6/1/22.
//

import Foundation
import UIKit

public protocol CaptureStatusSelectionDelegate {
    func getcaptureStatusSelection(captureStatus: CaptureStatus) -> String
}

public enum CaptureStatus {
    case Captured, Capturing, Losing, Lost, Holding
}

func getcaptureStatusSelection(captureStatus: CaptureStatus) -> String {
    switch captureStatus {
    case .Captured:
        return "Captured"
    case .Capturing:
        return "Capturing"
    case .Losing:
        return "Losing"
    case .Lost:
        return "Lost"
    case .Holding:
        return "Holding"
    }
}
