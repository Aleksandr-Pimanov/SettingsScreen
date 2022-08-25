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
}

extension ItemsCell {
    
    static var items: [[ItemsCell]] = [
        [ItemsCell(leftIcon: UIImage(systemName: "airplane")!, cellTitle: "Aвиарежим")],
        [ItemsCell(leftIcon: UIImage(systemName: "wifi")!, cellTitle: "Wi-Fi")],
        [ItemsCell(leftIcon: UIImage(named: "bluetooth")!, cellTitle: "Bluetooth")],
        [ItemsCell(leftIcon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, cellTitle: "Сотовая связь")],
        [ItemsCell(leftIcon: UIImage(systemName: "personalhotspot")!, cellTitle: "Режим модема")],
        [ItemsCell(leftIcon: UIImage(named: "vpn")!, cellTitle: "VPN")],
        [ItemsCell(leftIcon: UIImage(named: "notification")!, cellTitle: "Уведомления")],
        [ItemsCell(leftIcon: UIImage(named: "sound")!, cellTitle: "Звуки, тактильные сигналы")],
        [ItemsCell(leftIcon: UIImage(systemName: "moon.fill")!, cellTitle: "Не беспокоить")],
        [ItemsCell(leftIcon: UIImage(named: "time")!, cellTitle: "Экранное время")],
        [ItemsCell(leftIcon: UIImage(systemName: "gear")!, cellTitle: "Основные")],
        [ItemsCell(leftIcon: UIImage(systemName: "switch.2")!, cellTitle: "Пункт управления")],
        [ItemsCell(leftIcon: UIImage(systemName: "textformat.size")!, cellTitle: "Экран и яркость")],
        [ItemsCell(leftIcon: UIImage(systemName: "figure.arms.open")!, cellTitle: "Универсальный доступ")],
    ]
}
