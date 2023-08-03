//
//  MainTableViewController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

final class MainTableViewController: UITableViewController {
    
    var persons: [Person]!
    
}

extension MainTableViewController {
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
