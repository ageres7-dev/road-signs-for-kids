//
//  SignModel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 06.08.2022.
//

import Foundation

struct SignModel: Identifiable {
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

extension SignModel {
    static var warningSigns: [SignModel] {[
        
        SignModel(
            numberSign: "test_svg",
            title: "выезд на набережную.",
            body: nil
        ),
        SignModel(
            numberSign: "1.1",
            title: "Железнодорожный переезд со шлагбаумом",
            body: nil
        ),
        SignModel(
            numberSign: "1.2",
            title: "Железнодорожный переезд без шлагбаума",
            body: nil
        ),
        SignModel(
            numberSign: "1.3.1",
            title: "Однопутная же­лезная дорога",
            body: nil
        ),
        SignModel(
            numberSign: "1.3.2",
            title: "Многопутная же­лезная дорога",
            body: nil
        ),
        SignModel(
            numberSign: "1.5",
            title: "Пересечение с трамвайной линией",
            body: nil
        ),
        SignModel(
            numberSign: "1.6",
            title: "Пересечение рав­нозначных дорог",
            body: nil
        ),
        SignModel(
            numberSign: "1.7",
            title: "Пересечение с круговым движени­ем",
            body: nil
        ),
        SignModel(
            numberSign: "1.8",
            title: "Светофорное ре­гулирование",
            body: nil
        ),
        SignModel(
            numberSign: "1.9",
            title: "Разводной мост",
            body: nil
        ),
        
//        SignModel(
//            imageName: "",
//            title: "",
//            body: nil
//        ),
    ]}
}
