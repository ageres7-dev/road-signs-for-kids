//
//  AudioPlayerService.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 14.08.2022.
//

import Foundation
import AVFoundation

class AudioPlayerService: ObservableObject  {
    static let shared = AudioPlayerService()
    
    private var player: AVAudioPlayer?
    
    private init() {}
    
    func play(fileName: String, withExtension: String = "m4a") {
        guard let soundFileURL = Bundle.main.url(forResource: fileName,
                                                 withExtension: withExtension) else { return }
        player?.stop()
        player = try? AVAudioPlayer(contentsOf: soundFileURL)
        player?.play()
    }
}
