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
    @EnvironmentObject var audioPlayer: AudioPlayerService
    @State private var player: AVAudioPlayer?
    
    let model: SignModel
    
    var body: some View {
        ZStack {
            Color(colorScheme == .light ? .white : .systemGray5 )
//            ScrollView(showsIndicators: false)  {
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
//            }
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 40, style: .continuous)
        )
        .shadow(color: .customGray, radius: 20, x: 0, y: 0)
        .padding()
    }
}

extension SignCard {
    private func playName() {
        print("play name ", model.title)
        audioPlayer.play(fileName: model.numberSign)
    }
}

struct SignCard_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            SignCard(model: SignModel.modelForPreview)
                .environmentObject(AudioPlayerService.shared)
                .preferredColorScheme(.light)
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
    }
}
