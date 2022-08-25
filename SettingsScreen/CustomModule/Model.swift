//
//  Model.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

struct ItemsCell: Hashable {
    var leftIcon: UIImage
    var cellTitle: String
    var backGroundColor: UIColor
}

extension ItemsCell {
    
    static var items: [[ItemsCell]] = [
        [ItemsCell(leftIcon: UIImage(systemName: "airplane")!, cellTitle: "Aвиарежим", backGroundColor: .orange)],
        [ItemsCell(leftIcon: UIImage(systemName: "wifi")!, cellTitle: "Wi-Fi", backGroundColor: .systemBlue)],
        [ItemsCell(leftIcon: UIImage(named: "bluetooth")!, cellTitle: "Bluetooth", backGroundColor: .systemBlue)],
        [ItemsCell(leftIcon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, cellTitle: "Сотовая связь", backGroundColor: .systemGreen)],
        [ItemsCell(leftIcon: UIImage(systemName: "personalhotspot")!, cellTitle: "Режим модема", backGroundColor: .systemGreen)],
        [ItemsCell(leftIcon: UIImage(named: "vpn")!, cellTitle: "VPN", backGroundColor: .systemBlue)],
        [ItemsCell(leftIcon: UIImage(named: "notification")!, cellTitle: "Уведомления", backGroundColor: .systemRed)],
        [ItemsCell(leftIcon: UIImage(named: "sound")!, cellTitle: "Звуки, тактильные сигналы", backGroundColor: .systemPink)],
        [ItemsCell(leftIcon: UIImage(systemName: "moon.fill")!, cellTitle: "Не беспокоить", backGroundColor: .systemPurple)],
        [ItemsCell(leftIcon: UIImage(named: "time")!, cellTitle: "Экранное время", backGroundColor: .systemPurple)],
        [ItemsCell(leftIcon: UIImage(systemName: "gear")!, cellTitle: "Основные", backGroundColor: .systemGray6)],
        [ItemsCell(leftIcon: UIImage(systemName: "switch.2")!, cellTitle: "Пункт управления", backGroundColor: .systemGray6)],
        [ItemsCell(leftIcon: UIImage(systemName: "textformat.size")!, cellTitle: "Экран и яркость", backGroundColor: .systemBlue)]
        //[ItemsCell(leftIcon: UIImage(systemName: "figure.arms.open")!, cellTitle: "Универсальный доступ")]
    ]
}
