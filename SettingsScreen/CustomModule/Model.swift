//
//  Model.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

struct ItemsCell: Hashable {
    var icon: UIImage
    var cellTitle: String
    var backGroundColor: UIColor
    var isDisplaySwitch: Bool
}

struct Section {
    var cell: [ItemsCell]
    var header: String?
    
    static func getModels() -> [Section] {
        return [
            Section(cell: [ItemsCell(icon: UIImage(systemName: "airplane")!, cellTitle: "ХУЙ", backGroundColor: UIColor.blue, isDisplaySwitch: true), ItemsCell(icon: UIImage(systemName: "airplane")!, cellTitle: "ХУЙ", backGroundColor: UIColor.blue, isDisplaySwitch: true), ItemsCell(icon: UIImage(systemName: "airplane")!, cellTitle: "ХУЙ", backGroundColor: UIColor.blue, isDisplaySwitch: true)
//
//                           ItemsCell(icon: UIImage(systemName: "airplane"), cellTitle: <#T##String#>, backGroundColor: UIImage(systemName: "airplane"), isDisplaySwitch: <#T##Bool#>), ItemsCell(icon: UIImage(systemName: "airplane"), cellTitle: <#T##String#>, backGroundColor: UIImage(systemName: "airplane"), isDisplaySwitch: <#T##Bool#>),
//                ItemsCell(icon: UIImage(systemName: "airplane"), cellTitle: <#T##String#>, backGroundColor: <#T##UIColor#>, isDisplaySwitch: <#T##Bool#>)], header: <#T##String?#>)
//
//            Section(cell: [ItemsCell(icon: <#T##UIImage#>, cellTitle: <#T##String#>, backGroundColor: <#T##UIColor#>, isDisplaySwitch: <#T##Bool#>)], header: <#T##String?#>),
//
//            Section(cell: [ItemsCell(icon: <#T##UIImage#>, cellTitle: <#T##String#>, backGroundColor: <#T##UIColor#>, isDisplaySwitch: <#T##Bool#>)], header: <#T##String?#>)
//
//            Section(cell: <#T##[ItemsCell]#>, header: <#T##String?#>)
        ]
        )
        ]
    }
}

//extension ItemsCell {
//
//    static var items: [[ItemsCell]] = [
//        [ItemsCell(icon: UIImage(systemName: "airplane")!, cellTitle: "Aвиарежим", backGroundColor: .orange)],
//        [ItemsCell(icon: UIImage(systemName: "wifi")!, cellTitle: "Wi-Fi", backGroundColor: .systemBlue)],
//        [ItemsCell(icon: UIImage(named: "bluetooth")!, cellTitle: "Bluetooth", backGroundColor: .systemBlue)],
//        [ItemsCell(icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, cellTitle: "Сотовая связь", backGroundColor: .systemGreen)],
//        [ItemsCell(icon: UIImage(systemName: "personalhotspot")!, cellTitle: "Режим модема", backGroundColor: .systemGreen)],
//        [ItemsCell(icon: UIImage(named: "vpn")!, cellTitle: "VPN", backGroundColor: .systemBlue)],
//        [ItemsCell(icon: UIImage(named: "notification")!, cellTitle: "Уведомления", backGroundColor: .systemRed)],
//        [ItemsCell(icon: UIImage(named: "sound")!, cellTitle: "Звуки, тактильные сигналы", backGroundColor: .systemPink)],
//        [ItemsCell(icon: UIImage(systemName: "moon.fill")!, cellTitle: "Не беспокоить", backGroundColor: .systemPurple)],
//        [ItemsCell(icon: UIImage(named: "time")!, cellTitle: "Экранное время", backGroundColor: .systemPurple)],
//        [ItemsCell(icon: UIImage(systemName: "gear")!, cellTitle: "Основные", backGroundColor: .systemGray6)],
//        [ItemsCell(icon: UIImage(systemName: "switch.2")!, cellTitle: "Пункт управления", backGroundColor: .systemGray6)],
//        [ItemsCell(icon: UIImage(systemName: "textformat.size")!, cellTitle: "Экран и яркость", backGroundColor: .systemBlue)],
////        [ItemsCell(leftIcon: UIImage(systemName: "figure.arms.open")!, cellTitle: "Универсальный доступ")]
//    ]
//}
