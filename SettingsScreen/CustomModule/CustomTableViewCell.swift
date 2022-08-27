//
//  CustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var itemCell: ItemsCell?

    private lazy var leftIcon: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.contentMode = .scaleAspectFit 
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private lazy var iconContainer: UIView = {
        let container = UIView()
        container.layer.cornerRadius = 10
        container.clipsToBounds = true
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    private lazy var cellTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var cellSwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        return mySwitch
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupContainerLayout()
        setupLeftIconLayout()
        setupTitleLayout()
        setupSwitchLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(with model: ItemsCell) {
        leftIcon.image = model.icon
        cellTitle.text = model.cellTitle
        iconContainer.backgroundColor = model.backGroundColor
        
        guard let itemCell = itemCell else { return }
        if itemCell.isDisplaySwitch {
            addSubview(cellSwitch)
        }
    }
    
    private func setupHierarchy() {
        iconContainer.addSubview(leftIcon)
        addSubview(iconContainer)
        addSubview(cellTitle)
        addSubview(cellSwitch)
    }
    
    private func setupContainerLayout() {
        NSLayoutConstraint.activate([
            iconContainer.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            iconContainer.widthAnchor.constraint(equalToConstant: 30),
            iconContainer.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func setupLeftIconLayout() {
        NSLayoutConstraint.activate([
            leftIcon.topAnchor.constraint(equalTo: iconContainer.topAnchor),
            leftIcon.trailingAnchor.constraint(equalTo: iconContainer.trailingAnchor),
            leftIcon.leadingAnchor.constraint(equalTo: iconContainer.leadingAnchor),
            leftIcon.bottomAnchor.constraint(equalTo: iconContainer.bottomAnchor)
        ])
    }
    
    private func setupTitleLayout() {
        NSLayoutConstraint.activate([
            cellTitle.centerYAnchor.constraint(equalTo: iconContainer.centerYAnchor),
            cellTitle.leadingAnchor.constraint(equalTo: iconContainer.leadingAnchor, constant: 40)
        ])
    }
    
    private func setupSwitchLayout() {
        NSLayoutConstraint.activate([
            cellSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cellSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.itemCell = nil
    }
}
