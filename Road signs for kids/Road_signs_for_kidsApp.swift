//
//  Road_signs_for_kidsApp.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI

@main
struct Road_signs_for_kidsApp: App {
    var body: some Scene {
        WindowGroup {
            SignCategoryList()
                .environmentObject(AudioPlayerService.shared)
                .environmentObject(SpeechService.shared)
        }
    }
}
