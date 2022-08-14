//
//  SignCarousel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignCarousel: View {
    @Environment(\.colorScheme) private var colorScheme
    @State private var selectionSign: String = "first"
    
    let categorySings: SignRowModel
    var isFavorite = false
    
    var body: some View {
        
        ZStack {
            Group { colorScheme == .dark ? Color.black : Color.customBackground }
                .ignoresSafeArea()
            
            TabView(selection: $selectionSign) {
                ForEach(categorySings.signs) { sing in
                    SignCard(model: sing)
                        .padding(.bottom, 34)
                        .tag(sing.numberSign)
                }
            }
            .navigationTitle(categorySings.title)
            .navigationBarTitleDisplayMode(.inline)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if isFavorite {
                        Button {
                            print("Удаление \(selectionSign)")
                        } label: {
                            Image(systemName: "trash")
                        }
                    } else {
                        EmptyView()
                    }
                }
            }
        }
    }
}

struct SignCarusel_Previews: PreviewProvider {
    static var previews: some View {
        
        SignCarousel(categorySings: SignRowModel.modelForPreview)
    }
}
