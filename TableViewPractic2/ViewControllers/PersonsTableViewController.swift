//
//  PersonsTableViewController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

final class PersonsTableViewController: UITableViewController {
    var persons: [Person]!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tabBarItem.image = UIImage(systemName: "person.fill")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        tabBarItem.image = UIImage(systemName: "person")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let alert = UIAlertController(title: "Привет!", message: "Добро пожаловать!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
}




extension PersonsTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailViewController else { return }
        let indexPath = tableView.indexPathForSelectedRow
        guard let indexPathRow = indexPath?.row else { return }
        let person = persons[indexPathRow]
        detailVC.person = person
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        var cellConfig = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        cellConfig.text = person.fullName
        cell.contentConfiguration = cellConfig
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
}
