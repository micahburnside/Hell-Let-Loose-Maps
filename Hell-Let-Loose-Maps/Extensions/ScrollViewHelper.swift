//
//  ScrollViewHelper.swift
//  HLL Maps
//
//  Created by Micah Burnside on 4/11/23.
//

import Foundation
import UIKit

class ScrollViewHelper: UIScrollView {
    /**
     This is a reference to the scroll view's content view
     */
    var contentView: UIView? = nil
    /**
     This is the content offset expressed as a ratio between 0 and 1, from the center, not the top left corner
     */
    var contentOffsetRatio = CGPoint(x: 0.5, y: 0.5)
    
    /**
     When the content offset gets set, figure out what the ratio is between 0 and 1
     */
    override var contentOffset: CGPoint {
        didSet {
            let width = self.contentSize.width
            let height = self.contentSize.height
            let halfWidth = self.frame.size.width / 2.0
            let halfHeight = self.frame.size.height / 2.0
            let centerX = (self.contentOffset.x + halfWidth) / width
            let centerY = (self.contentOffset.y + halfHeight) / height
            self.contentOffsetRatio = CGPoint(x: centerX, y: centerY)
        }
    }
    
    func updateContentSize() {
        guard let contentView = self.contentView else {
            return
        }
        
        var contentRect = CGRect.zero
        
        for view in contentView.subviews {
            contentRect = contentRect.union(view.frame)
        }
        
        self.contentSize = contentRect.size
        self.updateContentOffset()
        
    }
    
    func updateContentOffset() {
        let ratio = self.contentOffsetRatio;
        self.contentOffset = CGPoint(x: (self.contentSize.width - self.frame.size.width) * ratio.x,
                                                 y: (self.contentSize.height - self.frame.size.height) * ratio.y)
    }
    /**
     This method will deternine the the correct contentOffset based on the ratio passed in
     */
    func determineNewContentOffset(for ratio: CGPoint) {
        if var frame = self.contentView?.frame {
            // Adjust the frame to be zero based since it can have a negative origin
            if frame.origin.x < 0 {
                frame = frame.offsetBy(dx: -frame.origin.x, dy: 0)
            }
            if frame.origin.y < 0 {
                frame = frame.offsetBy(dx: 0, dy: -frame.origin.y)
            }
            
            // Calculate the new content offset based off the contentOffsetRatio
            var offsetX = (ratio.x * self.contentSize.width) - (self.frame.size.width / 2.0)
            var offsetY = (ratio.y * self.contentSize.height) - (self.frame.size.height / 2.0)
            
            // Create a field of view rect witch represents where the scroll view will positioned with this new content offset
            var fov = CGRect(x:offsetX, y:offsetY, width:self.frame.size.width, height:self.frame.size.height)
            if fov.origin.x < 0 {
                fov = fov.offsetBy(dx: -fov.origin.x, dy: 0)
            }
            if fov.origin.y < 0 {
                fov = fov.offsetBy(dx: 0, dy: -fov.origin.y)
            }
            
            // If the new content offset is going to go outside the bounds of the new frame, reset
            // the x or y coordinate to its maximum value
            let intersection = fov.intersection(frame)
            if !intersection.size.equalTo(fov.size) {
                if (fov.maxX > frame.size.width) {
                    offsetX = frame.size.width -  fov.size.width
                }
                if (fov.maxY > frame.size.height) {
                    offsetY = frame.size.height -  fov.size.height
                }
            }
            
            // Preventing negative content offsets
            offsetY = offsetY > 0.0 ? offsetY : 0.0;
            offsetX = offsetX > 0.0 ? offsetX : 0.0;
            self.contentOffset = CGPoint(x:offsetX, y:offsetY)
        }
    }
}
