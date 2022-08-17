//
//  SignModel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import Foundation

struct SignModel: Identifiable, Hashable {
    let id = UUID()
    let numberSign: String
    let title: String
    let body: String?
}

extension SignModel {
    static var modelForPreview: SignModel {
        SignModel(numberSign: "1.2",
                  title: "Железнодорожный переезд без шлагбаума",
                  body: "Подробное описание знака Железнодорожный переезд без шлагбаума")
    }
    
    static var modelForPreview2: SignModel {
        SignModel(numberSign: "1.1",
                  title: "Железнодорожный переезд co шлагбаумом",
                  body: nil)
    }
}











