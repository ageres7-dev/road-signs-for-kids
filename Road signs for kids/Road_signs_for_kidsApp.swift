//
//  Road_signs_for_kidsApp.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI

@main
struct Road_signs_for_kidsApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            SignCategoryList()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(AudioPlayerService.shared)
                .environmentObject(SpeechService.shared)
        }
    }
}
