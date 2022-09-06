//
//  SaveImageProtocol.swift
//  HLL Maps
//
//  Created by Micah Burnside on 8/16/22.
//

import Foundation

protocol SaveImageProtocol {
    func onSuccess()
    func onError(error: NSError)
}
