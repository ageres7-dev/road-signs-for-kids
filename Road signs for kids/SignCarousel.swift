//
//  SignCarousel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignCarousel: View {
    @State private var selectionSign: SignRowModel?
    
    let categorySings: SignRowModel
    var isFavorite = false
    
    var body: some View {
        TabView(selection: $selectionSign) {
                ForEach(categorySings.signs) { sing in
                    SignCard(model: sing)
                        .padding(.bottom)
                }

            }
            .navigationTitle(categorySings.title)
            .navigationBarTitleDisplayMode(.inline)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if isFavorite {
                        Button {
                            print("Удаление \(selectionSign?.title ?? "")")
                        } label: {
                            Image(systemName: "trash")
                        }
                    } else {
                        EmptyView()
                    }
                }
            }
        
//            .ignoresSafeArea(.container, edges: .top)

    }
}

struct SignCarusel_Previews: PreviewProvider {
    static var previews: some View {
        
        SignCarousel(categorySings: SignRowModel.modelForPreview)
    }
}
