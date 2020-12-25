//
//  ContactDetailsTableViewController.swift
//  hw2.7
//
//  Created by Misha on 24.12.2020.
//

import UIKit

class ContactDetailsTableViewController: UITableViewController {

    var sectionName: String = ""
    var details: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = sectionName
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return details.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = details[0]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = details[1]
            
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Phone number"
        } else if section == 1 {
            return "E-mail"
        } else {
            return nil
        }
    }
    

}

