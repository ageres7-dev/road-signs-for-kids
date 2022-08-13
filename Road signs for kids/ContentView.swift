//
//  ContentView.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let signCategories = [
        SignRowModel.modelForPreview,
        SignRowModel.modelForPreview,
        SignRowModel.modelForPreview,
        SignRowModel.modelForPreview,
    ]
    private let warningSigns = SignModel.warningSigns
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 0) {
                    ForEach(signCategories, id: \.id) { category in
                        NavigationLink {
                            SignCarousel(signs: category.signs)
                                
                        } label: {
                            SignRowView(signCategory: category, shadowRadius: 8)
                                .foregroundColor(.primary)
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("Все знаки")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
