//
//  SettingsViewController.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    static let identifier = "CustomTableViewCell"
    
    var items = Section.getModels()
        
    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: SettingsViewController.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Настройки"
        setupHierarchy()
        setupTableViewLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(settingsTableView)
    }
    
    private func setupTableViewLayout() {
        NSLayoutConstraint.activate([
            settingsTableView.topAnchor.constraint(equalTo: view.topAnchor),
            settingsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            settingsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
