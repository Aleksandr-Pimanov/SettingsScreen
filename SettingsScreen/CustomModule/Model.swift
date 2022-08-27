//
//  Model.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

struct ItemsCell {
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
            Section(cell: [
                ItemsCell(icon: UIImage(systemName: "airplane")!, cellTitle: "Aвиарежим", backGroundColor: .orange, isDisplaySwitch: true),
                ItemsCell(icon: UIImage(systemName: "wifi")!, cellTitle: "Wi-Fi", backGroundColor: .systemBlue, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(named: "bluetooth")!, cellTitle: "Bluetooth", backGroundColor: .systemBlue, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, cellTitle: "Режим модема", backGroundColor: .systemGreen, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(named: "vpn")!, cellTitle: "VPN", backGroundColor: .systemBlue, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(named: "notification")!, cellTitle: "Уведомления", backGroundColor: .systemRed, isDisplaySwitch: false)], header: nil),
            
            Section(cell: [
                ItemsCell(icon: UIImage(named: "sound")!, cellTitle: "Уведомления", backGroundColor: .systemRed, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(named: "sound")!, cellTitle: "Звуки, тактильные сигналы", backGroundColor: .systemPink, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "moon.fill")!, cellTitle: "Не беспокоить", backGroundColor: .systemPurple, isDisplaySwitch: false),
                ItemsCell(icon:  UIImage(named: "time")!, cellTitle: "Экранное время", backGroundColor: .systemPurple, isDisplaySwitch: false)], header: nil),
            
            Section(cell: [
                ItemsCell(icon: UIImage(systemName: "gear")!, cellTitle: "Основные", backGroundColor: .systemGray2, isDisplaySwitch: true),
                ItemsCell(icon: UIImage(systemName: "switch.2")!, cellTitle: "Пункт управления", backGroundColor: .systemGray2, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "textformat.size")!, cellTitle: "Экран и яркость", backGroundColor: .systemBlue, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "figure.stand")!, cellTitle: "Универсальный доступ", backGroundColor: .systemBlue, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "faceid")!, cellTitle: "Face ID и код-пароль", backGroundColor: .systemGreen, isDisplaySwitch: false),
                ItemsCell(icon: UIImage(systemName: "battery.100")!, cellTitle: "Аккумулятор", backGroundColor: .systemGreen, isDisplaySwitch: false)], header: nil)
        ]
    }
}
