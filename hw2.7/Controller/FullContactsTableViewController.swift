//
//  FullContactsTableViewController.swift
//  hw2.7
//
//  Created by Misha on 25.12.2020.
//

import UIKit

class FullContactsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var contacts: [Contact] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts[section].details.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Phone number: \(contacts[indexPath.section].details[indexPath.row])"
        default:
            cell.textLabel?.text = "E-mail: \(contacts[indexPath.section].details[indexPath.row])"
        }

        return cell
    }
    

    

}
