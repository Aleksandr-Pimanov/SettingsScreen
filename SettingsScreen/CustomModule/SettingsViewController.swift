//
//  SettingsViewController.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 25.08.2022.
//

import UIKit

class SettingsViewController: UIViewController {
        
    struct CellsIdentifier {
        static let identifier = "cell"
    }
    
    private var items = Section.getModels()
 // private var items: [[ItemsCell]]?
        
    private lazy var settingsTableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: CellsIdentifier.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
      
    override func viewDidLoad() {
        super.viewDidLoad()
        //items = ItemsCell.items
        view.backgroundColor = .white
        title = "Настройки"
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(settingsTableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            settingsTableView.topAnchor.constraint(equalTo: view.topAnchor),
            settingsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            settingsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            settingsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
//        let defaultValue = 0
//        return items?.count ?? defaultValue
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].cell.count
//        let defaultValue = 0
//        return items?[section].count ?? defaultValue
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = items[indexPath.section].cell[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellsIdentifier.identifier, for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.configure(with: model)
       
        //      cell.itemCell = items[indexPath.section][indexPath.row]
      //  cell.accessoryType = .disclosureIndicator
       return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        guard let cell = cell as? CustomTableViewCell else { return }
//        cell.configure(model: items[indexPath.row].cell[indexPath.row])
//    }
}
