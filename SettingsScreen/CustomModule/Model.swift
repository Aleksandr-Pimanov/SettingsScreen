//
//  Model.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

struct ItemsCell {
    
    var icon: UIImage?
    var cellTitle: String
    var backGroundColor: UIColor
    var isSwitchHidden: Bool
    var statusLabel: String?
    var notification: UIImage?
    var isFirstSection: Bool?
}

struct Section {
    var cell: [ItemsCell]
    
    static func getModels() -> [Section] {
        return [
            Section(cell: [
                ItemsCell(icon: UIImage(named: "logo"), cellTitle: "Александр Пиманов", backGroundColor: .clear, isSwitchHidden: true, isFirstSection: true)]),
            
            Section(cell: [
                ItemsCell(icon: UIImage(systemName: "airplane"), cellTitle: "Aвиарежим", backGroundColor: .orange, isSwitchHidden: false),
                ItemsCell(icon: UIImage(systemName: "wifi"), cellTitle: "Wi-Fi", backGroundColor: .systemBlue, isSwitchHidden: true, statusLabel: "Не подключено"),
                ItemsCell(icon: UIImage(named: "bluetooth-white"), cellTitle: "Bluetooth", backGroundColor: .systemBlue, isSwitchHidden: true, statusLabel: "Вкл."),
                ItemsCell(icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), cellTitle: "Сотовая связь", backGroundColor: .systemGreen, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "personalhotspot")!, cellTitle: "Режим модема", backGroundColor: .systemGreen, isSwitchHidden: true),
                ItemsCell(icon: UIImage(named: "vpn-white"), cellTitle: "VPN", backGroundColor: .systemBlue, isSwitchHidden: false)]),
            
            Section(cell: [
                ItemsCell(icon: UIImage(systemName: "bell.badge.fill"), cellTitle: "Уведомления", backGroundColor: .systemRed, isSwitchHidden: true, notification: UIImage(named: "notific")!),
                ItemsCell(icon: UIImage(named: "sound-white"), cellTitle: "Звуки, тактильные сигналы", backGroundColor: .systemPink, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "moon.fill"), cellTitle: "Не беспокоить", backGroundColor: .systemPurple, isSwitchHidden: true),
                ItemsCell(icon:  UIImage(named: "time-white"), cellTitle: "Экранное время", backGroundColor: .systemPurple, isSwitchHidden: true)]),
            
            Section(cell: [
                ItemsCell(icon: UIImage(systemName: "gear"), cellTitle: "Основные", backGroundColor: .systemGray2, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "switch.2"), cellTitle: "Пункт управления", backGroundColor: .systemGray2, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "textformat.size"), cellTitle: "Экран и яркость", backGroundColor: .systemBlue, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "figure.stand"), cellTitle: "Универсальный доступ", backGroundColor: .systemBlue, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "faceid"), cellTitle: "Face ID и код-пароль", backGroundColor: .systemGreen, isSwitchHidden: true),
                ItemsCell(icon: UIImage(systemName: "battery.100"), cellTitle: "Аккумулятор", backGroundColor: .systemGreen, isSwitchHidden: true)])
        ]
    }
}
