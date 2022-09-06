//
//  UIView+.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/23/22.
//

import Foundation
import UIKit

extension UIView {
        
    func screenShot() -> UIImage? {
        let scale = UIScreen.main.nativeScale
        let bounds = self.bounds

        UIGraphicsBeginImageContextWithOptions(bounds.size, true, scale)
        if let _ = UIGraphicsGetCurrentContext() {
//            self.drawHierarchy(in: bounds, afterScreenUpdates: true)
            self.drawHierarchy(in: bounds, afterScreenUpdates: true)

        let screenshot = UIGraphicsGetImageFromCurrentImageContext()

        return screenshot
        }
        return nil
    }
    

}

extension UIView {
    func getscreenshot() -> UIImage {

            if(self is UIScrollView) {
                let scrollView = self as! UIScrollView
                var someImageView: UIImageView?
                let savedContentOffset = scrollView.contentOffset
                let savedFrame = scrollView.frame

                UIGraphicsBeginImageContext(someImageView!.intrinsicContentSize)
                scrollView.contentOffset = .zero
                self.frame = CGRect(x: 0, y: 0, width: scrollView.contentSize.width, height: scrollView.contentSize.height)
                self.layer.render(in: UIGraphicsGetCurrentContext()!)
                let image = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext();

                scrollView.contentOffset = savedContentOffset
                scrollView.frame = savedFrame

                return image!
            }

            UIGraphicsBeginImageContext(self.bounds.size)
            self.layer.render(in: UIGraphicsGetCurrentContext()!)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            return image!

        }
}
