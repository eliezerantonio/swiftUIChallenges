//
//  PlaySound.swift
//  Learn By Doing
//
//  Created by Eliezer Antonio on 30/06/24.
//

import AVFoundation
import Foundation

// MARK: - Audiop Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Cound not find and play the sound file.")
        }
    }
}
