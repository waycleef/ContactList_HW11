//
//  TabBarSettingViewController.swift
//  ContactList_HW11
//
//  Created by Алишер Маликов on 25.11.2022.
//

import UIKit

class TabBarSettingViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? FirstContactsTableViewController else { return }
        guard let sectionVC = viewControllers?.last as? SecondContactsTableViewController else { return }
        
        let persons = Person.getContactList()
        contactListVC.personList = persons
        sectionVC.secondPersonList = persons
    }

}
