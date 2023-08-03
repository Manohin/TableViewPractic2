//
//  TabBarController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        guard let mainVC = viewControllers?.first as? PersonsTableViewController else { return }
        guard let secondListVC = viewControllers?.last as? SecondPersonsTableViewController else { return }
        
        let persons = Person.getPersons()
        mainVC.persons = persons
        secondListVC.persons = persons
    }
}
