//
//  FirstContactsTableViewController.swift
//  ContactList_HW11
//
//  Created by Алишер Маликов on 23.11.2022.
//

import UIKit

class FirstContactsTableViewController: UITableViewController {
    
    var personList = Person.getPerson()
//    var delegate: FirstContactsTVCDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .done, target: nil, action: nil)
//        delegate.uploadData(for: personList)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactList", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let firstDetailVC = segue.destination as? FirstContactsViewController else { return }
        firstDetailVC.person = personList[indexPath.row]
    }

}


