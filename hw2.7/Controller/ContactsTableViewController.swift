//
//  ContactsTableViewController.swift
//  hw2.7
//
//  Created by Misha on 24.12.2020.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    let contacts = ContactList.getContactList()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contact List"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailsVC = segue.destination as! ContactDetailsTableViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.sectionName = contacts[indexPath.row].fullName
        detailsVC.details = contacts[indexPath.row].details
        
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].fullName
        return cell
    }

}
