//
//  SignCarousel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignCarousel: View {
    let signs: [SignModel]
    
    var body: some View {
            TabView {
                ForEach(signs) { sing in
                    SignCard(model: sing)
                        .padding(.bottom)
                }
//                .onAppear {
//                    signs.forEach {
//                        print("\($0.numberSign)-\($0.title).")
//                    }
//                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never) )
//            .ignoresSafeArea()

    }
}

struct SignCarusel_Previews: PreviewProvider {
    static var previews: some View {
        SignCarousel(signs: SignModel.warningSigns)
    }
}
