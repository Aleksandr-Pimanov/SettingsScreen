//
//  DetailsViewController.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 28.08.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var itemCell: ItemsCell?
    
    private lazy var cellTitle: UILabel = {
        let title = UILabel()
        title.textColor = .white
        title.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        title.adjustsFontSizeToFitWidth = true
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private lazy var icon: UIImageView = {
        let icon = UIImageView()
        icon.tintColor = .white
        icon.contentMode = .scaleAspectFit
        icon.clipsToBounds = true
        icon.translatesAutoresizingMaskIntoConstraints = false
        return icon
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupHierarchy()
        configure()
        setupIconLayout()
        setupTitleLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(cellTitle)
        view.addSubview(icon)
    }
    
    private func setupIconLayout() {
        NSLayoutConstraint.activate([
            icon.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            icon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            icon.widthAnchor.constraint(equalToConstant: 100),
            icon.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupTitleLayout() {
        NSLayoutConstraint.activate([
            cellTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cellTitle.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 30)
        ])
    }
    
    private func configure() {
        icon.image = itemCell?.icon
        cellTitle.text = itemCell?.cellTitle
    }
}
