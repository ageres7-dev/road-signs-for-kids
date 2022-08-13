//
//  SignRowModel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import Foundation

struct SignRowModel: Identifiable, Hashable {
    
    let id = UUID()
    let imageName: String
    let title: String
    let signs: [SignModel]
}

extension SignRowModel {
    static var modelForPreview: SignRowModel {
        SignRowModel(
            imageName: "1.1",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        )
        
//        SignModel(numberSign: "1.2",
//                  title: "Железнодорожный переезд без шлагбаума",
//                  body: "Подробное описание знака Железнодорожный переезд без шлагбаума")
    }
}

extension SignRowModel {
    static var allSignsCategory: [SignRowModel] {[
        SignRowModel(
            imageName: "1.1",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            imageName: "1.2",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            imageName: "1.10",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            imageName: "1.5",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            imageName: "1.6",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            imageName: "1.7",
            title: "Предупреждающие знаки ",
            signs: SignModel.warningSigns
        ),
    ]}
}
