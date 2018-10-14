//
//  ViewController.swift
//  VersaPlayerAirplayExtension
//
//  Created by jose.juan.qm@gmail.com on 10/13/2018.
//  Copyright (c) 2018 jose.juan.qm@gmail.com. All rights reserved.
//

import UIKit
import VersaPlayer
import VersaPlayerAirplayExtension

class ViewController: UIViewController {
    
    @IBOutlet weak var player: VersaPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL.init(string: "http://rmcdn.2mdn.net/Demo/html5/output.mp4") {
            let item = VPlayerItem(url: url)
            player.set(item: item)
        }
        player.useAirplay(manager: VersaPlayerAirplayManager(with: player))
        player.airplayManager?.enableAirPlay()
    }

}

