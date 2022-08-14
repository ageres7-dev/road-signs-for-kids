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
    
    private let favoriteSigns = SignRowModel.modelForPreview
//    private let warningSigns = SignModel.warningSigns
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    NavigationLink {
                        SignCarousel(categorySings: favoriteSigns, isFavorite: true)
                    } label: {
                        HStack {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.red)
                                .padding(.vertical, 4)
                                .frame(width: 42, height: 42)
                            Text(favoriteSigns.title)
                                .multilineTextAlignment(.leading)
                            
                        }
                    }
                } header: {
                    Text("Избранное")
                }
                
                Section {
                    ForEach(signCategories, id: \.id) { category in
                        NavigationLink {
                            SignCarousel(categorySings: category)
                            
                        } label: {
                            HStack {
                                Image(category.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.vertical, 4)
                                    .frame(width: 42, height: 42)
                                Text(category.title)
//                                    .bold()
                                    .multilineTextAlignment(.leading)
                                
                            }
                        }
                    }
                } header: {
                    Text("Категории знаков")
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Дорожные знаки")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
