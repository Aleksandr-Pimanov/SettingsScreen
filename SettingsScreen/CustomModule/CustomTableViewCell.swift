//
//  CustomTableViewCell.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    var itemCell: ItemsCell? {
        didSet {
            leftIcon.image = itemCell?.leftIcon
            cellTitle.text = itemCell?.cellTitle
            iconContainer.backgroundColor = itemCell?.backGroundColor
        }
    }
    
    private let leftIcon: UIImageView = {
        let icon = UIImageView()
        icon.clipsToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()
    
    private let cellTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let iconContainer: UIView = {
        let container = UIView()
        container.layer.cornerRadius = 10
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupContainerLayout()
        setupLeftIconLayout()
        setupTitleLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupHierarchy() {
        iconContainer.addSubview(leftIcon)
        addSubview(iconContainer)
        addSubview(cellTitle)
    }
    
    
    private func setupContainerLayout() {
        NSLayoutConstraint.activate([
            iconContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            iconContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            iconContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            iconContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.itemCell = nil
    }
}
