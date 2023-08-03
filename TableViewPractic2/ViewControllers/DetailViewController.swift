//
//  DetailViewController.swift
//  TableViewPractic2
//
//  Created by Alexey Manokhin on 03.08.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        emailLabel.text = "E-mail: \(person.email)"
        phoneNumberLabel.text = "Phone number: \(person.phoneNumber)"
    }
}
