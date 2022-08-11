//
//  PageView.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        
        TabView {
            ForEach(0..<30) { i in
                ZStack {
                    Color.white
                    Text("Row: \(i)").foregroundColor(.blue)
                }
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
                .shadow(radius: 20)
            }
            .padding()
        }
        //            .frame(width: UIScreen.main.bounds.width, height: 200)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never) )
        .ignoresSafeArea()
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
