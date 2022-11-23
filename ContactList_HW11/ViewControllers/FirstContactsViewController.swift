//
//  ForFirstContactsViewController.swift
//  ContactList_HW11
//
//  Created by Алишер Маликов on 23.11.2022.
//

import UIKit

class FirstContactsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.title
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"

    }

}
