//
//  ViewController.swift
//  Xylophone
//
//  Created by Nick Sagan on 06.11.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    func playSound(_ name: String) {
        let url = Bundle.main.url(forResource: "\(name)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        sender.alpha = 0.5
        playSound(sender.currentTitle!)
        _ = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: false) { anyVarHere in
            sender.alpha = 1
        }
        
    }
    
}
