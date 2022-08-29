//
//  Extension for VC.swift
//  SettingsScreen
//
//  Created by Aleksandr Pimanov on 29.08.2022.
//

import UIKit

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].cell.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsViewController.identifier, for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }

        return cell
}
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.section == 0 {
            return 80
        }
        return 50
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? CustomTableViewCell else { return }
        let model = items[indexPath.section].cell[indexPath.row]
        cell.configure(with: model)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = DetailsViewController()
        viewController.itemCell = items[indexPath.section].cell[indexPath.row]
        let isPushing = items[indexPath.section].cell[indexPath.row].isSwitchHidden
        
        if isPushing {
            tableView.deselectRow(at: indexPath, animated: true)
            navigationController?.pushViewController(viewController, animated: true)
        } else {
            tableView.deselectRow(at: indexPath, animated: false)
        }
    }
}
