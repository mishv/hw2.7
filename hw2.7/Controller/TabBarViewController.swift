//
//  TabBarViewController.swift
//  hw2.7
//
//  Created by Misha on 25.12.2020.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contactsList = Contact.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Contacts"
        
        setUpViewControllers(with: contactsList)

    }
    
    private func setUpViewControllers(with contacts: [Contact]) {
        let contactsVC = viewControllers?.first as! ContactsTableViewController
        let fullContactsVC = viewControllers?.last as! FullContactsTableViewController
        
        contactsVC.contacts = contacts
        fullContactsVC.contacts = contacts
    }
    

    

}
