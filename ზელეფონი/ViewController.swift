//
//  ViewController.swift
//  ზელეფონი
//
//  Created by Giorgi Samkharadze on 15.09.22.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    var str = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
       // print(sender.currentTitle)
        str = sender.currentTitle ?? "0"
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: str, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
