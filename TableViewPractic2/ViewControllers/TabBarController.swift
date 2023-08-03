//
//  TabBarController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        get(persons: Person.getPersons())
    }
}


extension TabBarController {
    private func get(persons: [Person]) {
        guard let mainVC = viewControllers?.first as? MainTableViewController else { return }
        mainVC.persons = persons
        
        
        guard let secondListVC = viewControllers?.last as? PersonsSecondTableViewController else { return }
        secondListVC.persons = persons
    }
}
