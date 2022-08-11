//
//  ContentView.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let signs = SignModel.warningSigns
    
    var body: some View {
            TabView {
                ForEach(signs) { sing in
                    SignCard(model: sing)
                        .padding(.bottom)
                }
                .onAppear {
                    signs.forEach {
                        print("\($0.numberSign)-\($0.title).")
                    }
                }
                    
            }
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//            .padding()
//            .frame(width: UIScreen.main.bounds.width, height: 200)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never) )
            .ignoresSafeArea()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 mini")
    }
}
