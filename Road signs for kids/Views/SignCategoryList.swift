//
//  SignCategoryList.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 14.08.2022.
//

import SwiftUI

struct SignCategoryList: View {
    @EnvironmentObject var audioPlayer: AudioPlayerService
    private let signCategories = SignRowModel.allSignsCategory
    
    private let favoriteSigns = SignRowModel.modelForPreview
    
    var body: some View {
        NavigationView {
            Form {
//                favoriteSection()
                categoryList()
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Дорожные знаки")
        }
    }
}

extension SignCategoryList {
    func favoriteSection() -> some View {
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
    }
    
    func categoryList() -> some View {
        Section {
            ForEach(signCategories, id: \.id) { category in
                HStack {
                    Image(category.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.vertical, 4)
                        .frame(width: 42, height: 42)
                    
                    NavigationLink {
                        SignCarousel(categorySings: category)
                    } label: {
                        Text(category.title)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
        } header: {
            Text("Категории знаков")
        }
    }
}

struct SignCategoryList_Previews: PreviewProvider {
    static var previews: some View {
        SignCategoryList()
            .previewDevice("iPhone 13 mini")
    }
}
