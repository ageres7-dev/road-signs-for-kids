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
            ScrollView(showsIndicators: false)  {
                VStack(spacing: 16) {
                    Spacer()
                    Button(action: playName) {
                        Image(model.numberSign)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 4)
                            .frame(maxWidth: .infinity, maxHeight: imageHeight)
                            .padding(.horizontal, 30)
                            .padding(.bottom, 16)
                    }
                    
                    Text(model.numberSign + " " + model.title)
                        .bold()
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    
                    if let body = model.body {
                        Button(action: playBody) {
                            Text(body)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.primary)
                        }
                    }
                    
                    Spacer()
                    Spacer()
                }
                .padding()
            }
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 40, style: .continuous)
        )
        .shadow(color: .customGray, radius: 5, x: 0, y: 0)
        .padding()
        .onDisappear {
            audioPlayer.stop()
        }
    }
}

extension SignCard {
    private var imageHeight: CGFloat {
        let screenSize: CGRect = UIScreen.main.bounds
        
        return min(screenSize.height, screenSize.width) * 0.8
    }
    
    private func playName() {
        audioPlayer.playPause(fileName: model.numberSign)
    }
    
    private func playBody() {
        guard model.body != nil else { return }
        
        audioPlayer.playPause(fileName: model.numberSign + "-description")
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
