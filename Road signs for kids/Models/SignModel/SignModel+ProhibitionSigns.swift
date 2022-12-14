//
//  SignModel+ProhibitionSigns.swift
//  Road signs for kids
//
//  Created by Sergey Dolgikh on 17.08.2022.
//

import Foundation



extension SignModel {
    static var prohibitionSigns: [SignModel] {[
        SignModel(
            numberSign: "3.1",
            title: "Въезд запрещен",
            body: """
        Запрещается въезд всех транспортных средств в данном направлении.
        От действия данного знака могут отступать маршрутные транспортные средства: трамвай, троллейбус, автобус.
        """
        ),
        SignModel(
            numberSign: "3.2",
            title: "Движение запрещено",
            body: """
        Запрещается движение всех транспортных средств.

        От действия данных знаков могут отступить:

        1. Маршрутные ТС;
        2. Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке;
        3. Транспортные средства, управляемые инвалидами I и II групп, перевозящие таких инвалидов или детей
        """
        ),
        SignModel(
            numberSign: "3.3",
            title: "Движение механических транспортных средств запрещено",
            body: """
        Движение механических транспортных средств запрещено.

        Гужевые повозки, велосипеды и веломобили могут продолжать движение.

        От действия данных знаков могут отступить:

        1. Маршрутные ТС;
        2. Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке;
        3.Транспортные средства, управляемые инвалидами I и II групп, перевозящие таких инвалидов или детей-инвалидов, если на указанных транспортных средствах установлен опознавательный знак "Инвалид".
        """
        ),
        SignModel(
            numberSign: "3.4",
            title: "Движение грузовых автомобилей запрещено",
            body: """
        Запрещается движение грузовых автомобилей и составов транспортных средств с разрешенной максимальной массой более 3,5 т (если на знаке не указана масса) или с разрешенной максимальной массой более указанной на знаке, а также тракторов и самоходных машин.

        Знак 3.4 не запрещает движение грузовых автомобилей, предназначенных для перевозки людей, транспортных средств организаций федеральной почтовой связи, имеющих на боковой поверхности белую диагональную полосу на синем фоне, а также грузовых автомобилей без прицепа с разрешенной максимальной массой не более 26 тонн, которые обслуживают предприятия, находящиеся в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке.
        """
        ),
        SignModel(
            numberSign: "3.5",
            title: "Движение мотоциклов запрещено",
            body: """
        Запрещается движение любых мотоциклов (колясками и без них).

        От действия данного знака могут отступить:

        Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке.
        """
        ),
        SignModel(
            numberSign: "3.6",
            title: "Движение тракторов запрещено",
            body: """
        Запрещается движение тракторов любых видов и самоходных машин (скреперов, грейдеров и т. п.).

        От действия данного знака могут отступать:

        Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке.
        """
        ),
        SignModel(
            numberSign: "3.7",
            title: "Движение с прицепом запрещено",
            body: """
        Запрещается движение грузовых автомобилей и тракторов с прицепами любого типа, а также буксировка механических транспортных средств.

        От действия данного знака могут отступать:

        Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке.
        """
        ),
        SignModel(
            numberSign: "3.8",
            title: "Движение гужевых повозок запрещено",
            body: """
        Запрещается движение гужевых повозок (саней), верховых и вьючных животных, а также прогон скота.

        От действия данного знака могут отступать:

        Транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и транспортные средства, которые обслуживают предприятия, находящиеся в обозначенной зоне, а также обслуживают граждан или принадлежат гражданам, проживающим или работающим в обозначенной зоне. В этих случаях транспортные средства должны въезжать в обозначенную зону и выезжать из нее на ближайшем к месту назначения перекрестке.
        """
        ),
        SignModel(
            numberSign: "3.9",
            title: "Движение на велосипедах запрещено",
            body: """
        Запрещается движение велосипедов и мопедов.

        Особенности:
        Знак не запрещает вести руками велосипед (мопед) по тротуару (пешеходной дорожке), а при его отсутствии — по правой обочине дороги (по ходу движения транспортных средств).
        """
        ),
        SignModel(
            numberSign: "3.10",
            title: "Движение пешеходов запрещено",
            body: """
        Запрещено движение пешеходов, а также лиц, которые считаются пешеходами: передвигающиеся в инвалидных колясках без двигателя, ведущие велосипед, мопед, мотоцикл, везущие санки, тележку, детскую или инвалидную коляску.

        Особенности:
        Действие знака распространяется только на ту сторону дороги, где он установлен.
        """
        ),
        SignModel(
            numberSign: "3.11",
            title: "Ограничение массы",
            body: """
        Запрещается движение транспортных средств, в том числе составов транспортных средств, общая фактическая масса которых больше указанной на знаке.
        """
        ),
        SignModel(
            numberSign: "3.12",
            title: "Ограничение массы, приходящейся на ось транспортного средства",
            body: """
        Запрещается движение транспортных средств, у которых фактическая масса, приходящаяся на какую-либо ось, превышает указанную на знаке.

        Особенности:
        1. Нагрузка на ось грузовых автомобилей распределяется следующим образом: на двухосных автомобилях — 1/3 на переднюю часть, 2/3 на заднюю ось; на трехосных автомобилях — по 1/3 на каждую ось.
        2. Если нагрузка на ось больше, чем на знаке, водитель должен объехать данный участок дороги по другому маршруту.
        """
        ),
        SignModel(
            numberSign: "3.13",
            title: "Ограничение высоты",
            body: """
        Запрещается движение транспортных средств, габаритная высота которых (с грузом или без груза) больше указанной на знаке.

        Особенности:
        Если высота автомобиля (с грузом или без него) больше, чем на знаке, то водитель должен объехать участок дороги по другому маршруту.
        """
        ),
        SignModel(
            numberSign: "3.14",
            title: "Ограничение ширины",
            body: """
        Запрещается движение транспортных средств, габаритная ширина которых (с грузом или без груза) больше указанной на знаке.

        Особенности:

        Если ширина автомобиля (с грузом или без него) больше, чем на знаке, то водитель должен объехать данный участок дороги по другому маршруту.
        """
        ),
        SignModel(
            numberSign: "3.15",
            title: "Ограничение длины",
            body: """
        Запрещается движение транспортных средств (составов транспортных средств) габаритная длина которых (с грузом или без груза) больше указанной на знаке.

        Особенности:
        Если габаритная длина автомобиля (составов транспортных средств) больше указанной на знаке, то водитель должен объехать данный участок дороги по другому маршруту.
        """
        ),
        SignModel(
            numberSign: "3.16",
            title: "Ограничение минимальной дистанции",
            body: """
        Запрещается движение транспортных средств с дистанцией между ними меньше указанной на знаке.

        Зона действия:

        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. Зона действия может ограничиваться таб. 8.2.1. «Зона действия».
        3. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.17.1",
            title: "Таможня",
            body: """
        Запрещается проезд без остановки у таможни.
        """
        ),
        SignModel(
            numberSign: "3.17.2",
            title: "Опасность",
            body: """
        Запрещается дальнейшее движение всех без исключения транспортных средств в связи с дорожно-транспортным происшествием, аварией, пожаром или другой опасностью.
        """
        ),
        SignModel(
            numberSign: "3.17.3",
            title: "Контроль",
            body: """
        Запрещается проезд без остановки через контрольные пункты.
        """
        ),
        SignModel(
            numberSign: "3.18.1",
            title: "Поворот направо запрещен",
            body: """
        Запрещает поворот направо.

        Особенности:
        1. Отступают: маршрутные транспортные средства (трамвай, троллейбус, автобус).
        2. Действие знака распространяется только на то пересечение, перед которым установлен знак.
        3. Действие знака не распространяется на маршрутные транспортные средства.
        """
        ),
        SignModel(
            numberSign: "3.18.2",
            title: "Поворот налево запрещен",
            body: """
        Запрещает поворот налево.

        ОБРАТИТЕ ВНИМАНИЕ: знак не запрещает разворот.

        Особенности:
        1. Отступают: маршрутные транспортные средства (трамвай, троллейбус, автобус).
        2. Действие знака распространяется только на то пересечение, перед которым установлен знак.
        3. Действие знака не распространяется на маршрутные транспортные средства.
        """
        ),
        SignModel(
            numberSign: "3.19",
            title: "Разворот запрещен",
            body: """
        ОБРАТИТЕ ВНИМАНИЕ: знак не запрещает поворот налево.

        Особенности:
        1. Отступают: маршрутные транспортные средства (трамвай, троллейбус, автобус).
        2. Действие знака не распространяется на маршрутные транспортные средства.
        """
        ),
        SignModel(
            numberSign: "3.20",
            title: "Обгон запрещен",
            body: """
        Запрещается обгон всех транспортных средств, кроме тихоходных транспортных средств, гужевых повозок, мопедов и двухколесных мотоциклов без бокового прицепа.

        Зона действия:

        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. Зона действия может ограничиваться таб. 8.2.1 «Зона действия».
        3. До знака 3.21 «Конец зоны запрещения обгона».
        4. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.21",
            title: "Конец зоны запрещения обгона",
            body: """
        Отменяет действие знака 3.20 «Обгон запрещен».
        """
        ),
        SignModel(
            numberSign: "3.22",
            title: "Обгон грузовым автомобилем запрещен",
            body: """
        Запрещается грузовым автомобилям с разрешенной максимальной массой более 3.5 т. обгон всех транспортных средств без исключения.

        Зона действия:

        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. Зона действия может ограничиваться таб. 8.2.1 «Зона действия».
        3. До знака 3.23 «Конец зоны запрещения обгона грузовым автомобилям».
        4. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.23",
            title: "Конец зоны запрещения обгона грузовым автомобилям",
            body: """
        Отменяет действие знака 3.22 «Обгон грузовым автомобилям запрещен».
        """
        ),
        SignModel(
            numberSign: "3.24",
            title: "Ограничение максимальной скорости",
            body: """
        Запрещается движение со скоростью (км/ч), превышающей указанную на знаке.

        В случае превышения разрешенной скорости с разницей до +10 км/ч, Вас может остановить инспектор ГИБДД в том случае, если движение вашего автомобиля отличается от потока других, и при этом сделать только предупреждение. За превышение скоростного режима свыше +20 км/ч следует наказание — штраф; свыше +80 км/ч - штраф или лишение прав.

        Зона действия:

        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. Зона действия может ограничиваться таб. 8.2.1 «Зона действия».
        3. До такого же знака с другим значением скорости.
        4. До знака 5.23.1 или 5.23.2 «Начало населенного пункта» с белым фоном.
        5. До знака 3.25 «Конец зоны ограничения максимальной скорости».
        6. До знака 3.31 «Конец зоны всех ограничений».

        Разница до +20 км/ч допускается по причине того, что «радар» инспектора показывает мгновенную скорость, спидометр же водителя — среднюю скорость. На точность показаний спидометра также влияет величина радиуса качения колеса (Rк), которая не является величиной постоянной, кроме того, спидометр имеет грубую шкалу делений.
        """
        ),
        SignModel(
            numberSign: "3.25",
            title: "Конец зоны ограничения максимальной скорости",
            body: """
        Отменяет действие знака 3.24 «Ограничение максимальной скорости».
        """
        ),
        SignModel(
            numberSign: "3.26",
            title: "Подача звукового сигнала запрещена",
            body: """
        Запрещается пользоваться звуковыми сигналами, кроме тех случаев, когда сигнал подается для предотвращения дорожно-транспортного происшествия.

        Зона действия:

        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. Зона действия может ограничиваться таб. 8.2.1 «Зона действия».
        3. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.27",
            title: "Остановка запрещена",
            body: """
        Запрещаются остановка и стоянка транспортных средств.

        Распространяется только на ту сторону дороги, на которой они установлены.

        Особенности:

        Действия данного знака не распространяется на маршрутные транспортные средства и транспортные средства, используемые в качестве легкового такси, в местах остановки маршрутных транспортных средств или стоянки транспортных средств, используемых в качестве легкового такси, обозначенных разметкой 1.17 и (или) знаками 5.16 - 5.18 соответственно.

        Зона действия:
        1. От места установки до ближайшего перекрестка, а в населенном пункте при отсутствии перекрестка — до конца населенного пункта. Распространяется только на ту сторону дороги, на которой они установлены.
        2. До действия повторного знака 3.27 «Остановка запрещена» с таб. 8.2.2, 8.2.3 «Зона действия». При этом не забывайте, таб. 8.2.3 указывает конец зоны действия знака. Сразу же за знаком остановка разрешена.
        3. Определяется разметкой 1.4 желтого цвета.
        4. До знака 3.31 «Конец зоны всех ограничений».
        5. В конце зоны их действия повторных знаков 3.27 - 3.30 с табличкой 8.2.3 или применением таблички 8.2.2.
        """
        ),
        SignModel(
            numberSign: "3.28",
            title: "Стоянка запрещена",
            body: """
        Запрещается стоянка транспортных средств.

        Распространяется только на ту сторону дороги, на которой они установлены.

        Особенности:

        Действия данного знака не распространяется на транспортные средства, управляемые инвалидами, перевозящие инвалидов, в том числе детей
        """
        ),
        SignModel(
            numberSign: "3.29",
            title: "Стоянка запрещена по нечетным числам месяца",
            body: """
        При одновременном применении знаков 3.29 и 3.30 на противоположных сторонах проезжей части разрешается стоянка на обеих сторонах проезжей части с 19 часов до 21 часа (время перестановки).

        Распространяется только на ту сторону дороги, на которой они установлены.

        Особенности:

        Действия данного знака не распространяется на транспортные средства, управляемые инвалидами, перевозящие инвалидов, в том числе детей-инвалидов, если на указанных транспортных средствах установлен опознавательный знак "Инвалид", а также на транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и на такси с включенным таксометром;

        Зона действия:
        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. До действия повторного знака 3.28, 3.29, 3.30 с таб. 8.2.2, 8.2.3 «Зона действия». При этом таб.8.2.3 указывает конец зоны действия знака. Сразу же за знаком стоянка разрешена.
        3. Определяется разметкой 1.10 желтого цвета.
        4. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.30",
            title: "Стоянка запрещена по четным числам месяца",
            body: """
        При одновременном применении знаков 3.29 и 3.30 на противоположных сторонах проезжей части разрешается стоянка на обеих сторонах проезжей части с 19 часов до 21 часа (время перестановки).

        Особенности:

        Действия данного знака не распространяется на транспортные средства, управляемые инвалидами, перевозящие инвалидов, в том числе детей-инвалидов, если на указанных транспортных средствах установлен опознавательный знак "Инвалид", а также на транспортные средства организаций федеральной почтовой связи, имеющие на боковой поверхности белую диагональную полосу на синем фоне, и на такси с включенным таксометром;

        Зона действия:
        1. От места установки знака до ближайшего перекрестка за ним, а в населенных пунктах при отсутствии перекрестка - до конца населенного пункта. Действие знаков не прерывается в местах выезда с прилегающих к дороге территорий и в местах пересечения (примыкания) с полевыми, лесными и другими второстепенными дорогами, перед которыми не установлены соответствующие знаки.
        2. До действия повторного знака 3.28, 3.29, 3.30 с таб. 8.2.2, 8.2.3 «Зона действия». При этом таб. 8.2.3 указывает конец зоны действия знака. Сразу же за знаком стоянка разрешена.
        3. Определяется разметкой 1.10 желтого цвета.
        4. До знака 3.31 «Конец зоны всех ограничений».
        """
        ),
        SignModel(
            numberSign: "3.31",
            title: "Конец зоны всех ограничений",
            body: """
        Отменяет действие следующих запрещающих знаков (установленных вместе или последовательно):
        1) 3.16 Ограничение минимальной дистанции;
        2) 3.20 Обгон запрещен;
        3) 3.22 Обгон грузовым автомобилям запрещен;
        4) 3.24 Ограничение максимальной скорости;
        5) 3.26 Подача звукового сигнала запрещена;
        6) 3.27 Остановка запрещена;
        7) 3.28 Стоянка запрещена;
        8) 3.29 Стоянка запрещена по нечетным числам месяца;
        9) 3.30 Стоянка запрещена по четным числам месяца.
        """
        ),
        SignModel(
            numberSign: "3.32",
            title: "Движение транспортных средств с опасными грузами запрещено",
            body: """
        Запрещается движение транспортных средств, оборудованных опознавательными знаками (информационными табличками) «Опасный груз».

        Особенности:
        Действие знака распространяется на ВСЕ транспортные средства, имеющие опознавательные знаки (информационные таблички) «Опасный груз».
        """
        ),
        SignModel(
            numberSign: "3.33",
            title: "Движение транспортных средств с взрывчатыми и легковоспламеняющимися грузами запрещено",
            body: """
        Запрещается движение транспортных средств, осуществляющих перевозку взрывчатых веществ и изделий, а также других опасных грузов, подлежащих маркировке как легковоспламеняющиеся, кроме случаев перевозки указанных опасных веществ и изделий в ограниченном количестве, определяемом в порядке, установленном специальными правилами перевозки.

        Опасные грузы подразделяются на классы:
        кл. 1 — взрывчатые вещества;
        кл. 2 — газы сжатые, сжиженные и растворенные под давлением;
        кл. 3 — легковоспламеняющиеся жидкости;
        кл. 4 — легковоспламеняющиеся вещества и материалы;
        кл. 5 — окисляющиеся вещества и органические перекиси;
        кл. 6 — ядовитые (токсичные) вещества;
        кл. 7 — радиоактивные и инфекционные материалы;
        кл. 8 — едкие и коррозионные материалы;
        кл. 9 — прочие опасные вещества.
        """
        ),
    ]}
}
