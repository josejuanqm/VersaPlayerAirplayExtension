//
//  VersaPlayerAirPlay.swift
//  VersaPlayer Demo
//
//  Created by Jose Quintero on 10/11/18.
//  Copyright © 2018 Quasar. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
import VersaPlayer

public class VersaPlayerAirplayManager: VersaPlayerExtension {
    
    public func enableAirPlay() {
        player.player.allowsExternalPlayback = true
        player.player.usesExternalPlaybackWhileExternalScreenIsActive = true
        let audioSession = AVAudioSession.sharedInstance()
        if #available(iOS 11.0, *) {
            try? audioSession.setCategory(AVAudioSessionCategorySoloAmbient, mode: AVAudioSessionModeMoviePlayback, routeSharingPolicy: AVAudioSessionRouteSharingPolicy.longForm, options: AVAudioSessionCategoryOptions.allowAirPlay)
        } else {
            if #available(iOS 10.0, *) {
                try? audioSession.setCategory(AVAudioSessionCategorySoloAmbient, with: AVAudioSessionCategoryOptions.allowAirPlay)
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
}
