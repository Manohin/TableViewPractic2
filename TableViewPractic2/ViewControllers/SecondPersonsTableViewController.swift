//
//  SecondPersonsTableViewController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

final class SecondPersonsTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.image = UIImage(systemName: "person.fill")
    }
}

// MARK: - Table view data source

extension SecondPersonsTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.text = "Телефон: " + person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = "Email: " + person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section].fullName
        
        return person
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
