//
//  SignRowView.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import SwiftUI

struct SignRowView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    let signCategory: SignRowModel
    var shadowRadius: CGFloat = 8
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(colorScheme == .dark ? Color(.systemGray5) : .white)
                .shadow(radius: shadowRadius)
            
            HStack {
                Image(signCategory.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 52, height: 52)
                Text(signCategory.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
        }
    }
}

struct SignRowView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStack {
            SignRowView(signCategory: SignRowModel.modelForPreview)
        }
        
    }
}


struct CustomBackground: ViewModifier {
    @Environment(\.colorScheme) private var colorScheme
    let innerPadding: CGFloat
    
    func body(content: Content) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(colorScheme == .dark ? Color(.systemGray5) : .white)
                .shadow(radius: 8)
            
            content
                .padding(innerPadding)
        }
    }
}


extension View {
    func setCustomBackground(innerPadding: CGFloat = 16) -> some View {
        self.modifier(
            CustomBackground(innerPadding: innerPadding)
        )
    }
}
