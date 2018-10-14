//
//  VersaPlayerAdExtension.swift
//  VersaPlayer Demo
//
//  Created by Jose Quintero on 10/12/18.
//  Copyright © 2018 Quasar. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
import VersaPlayer

public extension VersaPlayer {
    
    public var airplayManager: VersaPlayerAirplayManager? {
        let adManager = getExtension(with: "airplayManager") as? VersaPlayerAirplayManager
        return adManager
    }
    
    public func useAirplay(manager: VersaPlayerAirplayManager) {
        addExtension(extension: manager, with: "airplayManager")
    }
    
}
