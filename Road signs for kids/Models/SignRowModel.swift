//
//  SignRowModel.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 13.08.2022.
//

import Foundation

struct SignRowModel: Identifiable, Hashable {
    
    let id = UUID()
    let fileName: String
    let imageName: String
    let title: String
    let signs: [SignModel]
}

extension SignRowModel {
    static var modelForPreview: SignRowModel {
        SignRowModel(
            fileName: "1.WarningSigns",
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
            fileName: "1.WarningSigns",
            imageName: "1.1",
            title: "Предупреждающие знаки",
            signs: SignModel.warningSigns
        ),
        SignRowModel(
            fileName: "2.SignsOfPriority",
            imageName: "2.1",
            title: "Знаки приоритета",
            signs: SignModel.signsOfPriority
        ),
        SignRowModel(
            fileName: "3.ProhibitionSigns",
            imageName: "3.1",
            title: "Запрещающие знаки",
            signs: SignModel.prohibitionSigns
        ),
//        SignRowModel(
//            fileName: "4.MandatorySigns",
//            imageName: "4.1",
//            title: "Предписывающие знаки",
//            signs: SignModel.warningSigns
//        ),
//        SignRowModel(
//            fileName: "5.SignsOfSpecialRegulations",
//            imageName: "5.1",
//            title: "Знаки особых предписаний",
//            signs: SignModel.warningSigns
//        ),
//        SignRowModel(
//            fileName: "6.InformationSigns",
//            imageName: "6.1",
//            title: "Информационные знаки",
//            signs: SignModel.warningSigns
//        ),
//        SignRowModel(
//            fileName: "7.ServiceSigns",
//            imageName: "7.1",
//            title: "Знаки сервиса",
//            signs: SignModel.warningSigns
//        ),
//        SignRowModel(
//            fileName: "8.SignsOfAdditionalInformation",
//            imageName: "6.1",
//            title: "Знаки дополнительной информации",
//            signs: SignModel.warningSigns
//        ),
    ]}
}
