//
//  SignCard.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI
import AVFoundation

struct SignCard: View {
    @Environment(\.colorScheme) private var colorScheme
    @EnvironmentObject var speechService: SpeechService
    @State private var player: AVAudioPlayer?
    
    let model: SignModel
    
    var body: some View {
        ZStack {
            Color(colorScheme == .light ? .white : .systemGray5 )
            
            VStack(spacing: 16) {
                Spacer()
                Button(action: playName) {
                    Image(model.numberSign)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .shadow(radius: 4)
                        .padding(.horizontal, 30)
                        .padding(.bottom, 16)
                }
                
                Text(model.numberSign + " " + model.title)
                    .bold()
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                if let body = model.body {
                    Text(body)
                }
                
                Spacer()
                Spacer()
            }
            .padding()
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 40, style: .continuous)
        )
        .shadow(radius: 20)
        .padding()
    }
}

extension SignCard {
    private func playName() {
        print("play name ", model.title)
        
        if let soundFileURL = Bundle.main.url(
                forResource: model.numberSign,
                withExtension: "m4a"
        ) {
            player = try? AVAudioPlayer(contentsOf: soundFileURL)
            player?.play()
        } else {
            speechService.setAudioCategoryToPlayback()
            speechService.speak(model.title)
        }
        
        let voices = speechService
            .availableVoices
            .filter{ $0.language == "ru-RU" }
            
        if let enhancedVoice = voices.filter({ $0.quality == .enhanced }).first {
            print("enhancedVoice name ", enhancedVoice.name)
            speechService.selectedVoice = enhancedVoice
        }

        voices.forEach {
            print("name ", $0.name)
            print("identifier ", $0.identifier)
            print("quality ", String(describing: $0.quality) )
        }
    }
}

struct SignCard_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            SignCard(model: SignModel.modelForPreview)
                .environmentObject(SpeechService.shared)
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
