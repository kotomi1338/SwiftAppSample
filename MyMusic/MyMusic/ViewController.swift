//
//  ViewController.swift
//  MyMusic
//
//  Created by Kotomi Mizuno on 2020/02/08.
//  Copyright © 2020 Kotomi Mizuno. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    var cymbalPlayer: AVAudioPlayer!

    @IBAction func cymbal(_ sender: Any) {
        do {
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            cymbalPlayer.play()
            print("シンバルがなりました！")
        } catch {
            print("シンバルでエラーが発生しました！")
        }
    }
    
    let guiarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer: AVAudioPlayer!
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf: guiarPath, fileTypeHint: nil)
            guitarPlayer.play()
            print("ギターがなりました！")
        } catch {
            print("ギターでエラーが発生しました！")
        }
    }
    
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer: AVAudioPlayer!
    
    @IBAction func play(_ sender: Any) {
        do {
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
            print("backmusicがなりました！")
        } catch {
            print("エラーが発生しました！")
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
    }
}

