//
//  SecondContactsTableViewController.swift
//  ContactList_HW11
//
//  Created by Алишер Маликов on 23.11.2022.
//

import UIKit

//protocol FirstContactsTVCDelegate {
//    func uploadData(for person: [Person])
//}

class SecondContactsTableViewController: UITableViewController {
    
    var secondPersonList: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        secondPersonList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        secondPersonList[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondContacts", for: indexPath)
        let person = secondPersonList[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = person.phone
            cell.imageView?.image = UIImage(systemName: Contactcs.phone.rawValue)
        default:
            cell.textLabel?.text = person.email
            cell.imageView?.image = UIImage(systemName: Contactcs.email.rawValue)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

