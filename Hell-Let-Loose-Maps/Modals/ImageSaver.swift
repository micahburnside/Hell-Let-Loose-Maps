//
//  ImageSaver.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/16/22.
//

import Foundation
import UIKit

class ImageSaver: NSObject {
    var saveDelegate: SaveImageProtocol?
    
    init(saveDelegate: SaveImageProtocol) {
        self.saveDelegate = saveDelegate
    }
    
    func saveToPhotoAlbum(image:UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
   @objc func image(_ image: UIImage, didFinishSavingWithError error: NSError?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            self.saveDelegate?.onError(error: error)
        } else {
            self.saveDelegate?.onSuccess()
        }
    }
}
