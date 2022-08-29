//
//  CustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var itemCell: ItemsCell?
    
    var statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .systemGray
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
       return label
    }()
    
    private lazy var infoAboutAccount: UILabel = {
        let info = UILabel()
        info.font = UIFont.systemFont(ofSize: 14)
        info.adjustsFontSizeToFitWidth = true
        info.translatesAutoresizingMaskIntoConstraints = false
        return info
    }()
    
    private lazy var leftIcon: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.contentMode = .scaleAspectFit
        icon.clipsToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private lazy var iconContainer: UIView = {
        let container = UIView()
        container.layer.cornerRadius = 8
        container.clipsToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    private lazy var cellTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cellSwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        return mySwitch
    }()
    
    private lazy var notificationIcon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupTitleLayout()
        setupSwitchLayout()
        setupStatusLabelLayout()
        setupNotificationLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with model: ItemsCell) {
        leftIcon.image = model.icon
        cellTitle.text = model.cellTitle
        iconContainer.backgroundColor = model.backGroundColor
        cellSwitch.isHidden = model.isSwitchHidden
        statusLabel.text = model.statusLabel
        notificationIcon.image = model.notification
        
        if model.isSwitchHidden {
            accessoryType = .disclosureIndicator
        }
        
        setupFirstImageConstraint(model.isFirstSection ?? false)
    }
    
    private func setupHierarchy() {
        iconContainer.addSubview(leftIcon)
        contentView.addSubview(iconContainer)
        contentView.addSubview(cellTitle)
        contentView.addSubview(cellSwitch)
        contentView.addSubview(statusLabel)
        contentView.addSubview(notificationIcon)
    }
    
    private func setupStatusLabelLayout() {
        NSLayoutConstraint.activate([
            statusLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            statusLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupTitleLayout() {
        NSLayoutConstraint.activate([
            cellTitle.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
            cellTitle.leadingAnchor.constraint(equalTo: iconContainer.trailingAnchor, constant: 10)
        ])
    }
    
    private func setupSwitchLayout() {
        NSLayoutConstraint.activate([
            cellSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            cellSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupNotificationLayout() {
        NSLayoutConstraint.activate([
            notificationIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            notificationIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
        ])
    }
    
    private func setupFirstImageConstraint(_ isFirstIcon: Bool) {
        
        if isFirstIcon {
            NSLayoutConstraint.activate([
                iconContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                iconContainer.widthAnchor.constraint(equalToConstant: 65),
                iconContainer.heightAnchor.constraint(equalToConstant: 65),
                
                leftIcon.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor),
                leftIcon.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
                leftIcon.widthAnchor.constraint(equalToConstant: 50),
                leftIcon.heightAnchor.constraint(equalToConstant: 50)
            ])
        } else {
            NSLayoutConstraint.activate([
                iconContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
                iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                iconContainer.widthAnchor.constraint(equalToConstant: 25),
                iconContainer.heightAnchor.constraint(equalToConstant: 25),
                
                leftIcon.centerXAnchor.constraint(equalTo: iconContainer.centerXAnchor),
                leftIcon.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
                leftIcon.widthAnchor.constraint(equalToConstant: 20),
                leftIcon.heightAnchor.constraint(equalToConstant: 20)
            ])
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.itemCell = nil
    }
}
