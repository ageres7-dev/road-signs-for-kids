//
//  AudioPlayerService.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 14.08.2022.
//

import Foundation
import AVFoundation

class AudioPlayerService: NSObject, ObservableObject  {
    static let shared = AudioPlayerService()
    
    @Published var currentPlayedFile: String?
    
    private var player: AVAudioPlayer?
    
    private override init() {
        super.init()
    }
    
    func stop() {
        player?.stop()
        player = nil
        currentPlayedFile = nil
    }
    
    func playPause(fileName: String, withExtension: String = "m4a") {
        guard
            let soundFileURL = Bundle.main.url(
                forResource: fileName,
                withExtension: withExtension
            )
        else { return }
        
//        player.ob
        
        
        let filenameWithExtension = fileName + withExtension
        
        if filenameWithExtension == currentPlayedFile  {
            player?.stop()
            currentPlayedFile = nil
        } else {
            currentPlayedFile = filenameWithExtension
            
            player?.stop()
            player = try? AVAudioPlayer(contentsOf: soundFileURL)
            player?.delegate = self
            player?.play()
        }
    }
}

extension AudioPlayerService: AVAudioPlayerDelegate {
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        currentPlayedFile = nil
    }
}
