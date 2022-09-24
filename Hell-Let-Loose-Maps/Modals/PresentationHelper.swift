//
//  PresentationHelper.swift
//  HLL Maps
//
//  Created by Micah Burnside on 9/10/22.
//

import UIKit

class PresentationHelper {
    
    static let sharedInstance = PresentationHelper()
    var largestUndimmedDetentIdentifier: UISheetPresentationController.Detent.Identifier = .medium
    var prefersScrollingExpandsWhenScrolledToEdge: Bool = true
    var prefersEdgeAttachedInCompactHeight: Bool = true
    var widthFollowsPreferredContentSizeWhenEdgeAttached: Bool = true
}
