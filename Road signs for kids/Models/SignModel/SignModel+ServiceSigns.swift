//
//  SignModel+ServiceSigns.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 17.08.2022.
//

import Foundation



extension SignModel {
    static var serviceSigns: [SignModel] {[
        SignModel(
            numberSign: "7.1",
            title: "Пункт медицинской помощи",
            body: nil
        ),
        SignModel(
            numberSign: "7.2",
            title: "Больница",
            body: nil
        ),
        SignModel(
            numberSign: "7.3",
            title: "Автозаправочная станция",
            body: nil
        ),
        SignModel(
            numberSign: "7.4",
            title: "Техническое обслуживание автомобилей",
            body: nil
        ),
        SignModel(
            numberSign: "7.5",
            title: "Мойка автомобилей",
            body: nil
        ),
        SignModel(
            numberSign: "7.6",
            title: "Телефон",
            body: nil
        ),
        SignModel(
            numberSign: "7.7",
            title: "Пункт питания",
            body: nil
        ),
        SignModel(
            numberSign: "7.8",
            title: "Питьевая вода",
            body: nil
        ),
        SignModel(
            numberSign: "7.9",
            title: "Гостиница или мотель",
            body: nil
        ),
        SignModel(
            numberSign: "7.10",
            title: "Кемпинг",
            body: nil
        ),
        SignModel(
            numberSign: "7.11",
            title: "Место отдыха",
            body: nil
        ),
        SignModel(
            numberSign: "7.12",
            title: "Пост дорожно-патрульной службы",
            body: nil
        ),
        SignModel(
            numberSign: "7.13",
            title: "Полиция",
            body: nil
        ),
        SignModel(
            numberSign: "7.14",
            title: "Пункт транспортного контроля",
            body: nil
        ),
        SignModel(
            numberSign: "7.14.1",
            title: "Пункт таможенного контроля",
            body: nil
        ),
        SignModel(
            numberSign: "7.15",
            title: "Зона приема радиостанции, передающей информацию о дорожном движении",
            body: """
        Участок дороги, на котором осуществляется прием передач радиостанции на частоте, указанной на знаке.
        """
        ),
        SignModel(
            numberSign: "7.16",
            title: "Зона радиосвязи с аварийными службами",
            body: """
        Участок дороги, на котором действует система радиосвязи с аварийными службами в гражданском диапазоне 27 МГц.
        """
        ),
        SignModel(
            numberSign: "7.17",
            title: "Бассейн или пляж",
            body: nil
        ),
        SignModel(
            numberSign: "7.18",
            title: "Туалет",
            body: nil
        ),
        SignModel(
            numberSign: "7.19",
            title: "Телефон экстренной связи",
            body: """
        Указывает место, где находится телефон для вызова оперативных служб.
        """
        ),
        SignModel(
            numberSign: "7.20",
            title: "Огнетушитель",
            body: """
        Указывает место, где находится огнетушитель.
        """
        ),
        SignModel(
            numberSign: "7.21",
            title: "Автозаправочная станция с возможностью зарядки электромобилей",
            body: nil
        ),
    ]}
}
