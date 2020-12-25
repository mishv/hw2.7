//
//  Contact.swift
//  hw2.7
//
//  Created by Misha on 24.12.2020.
//

import Foundation

struct Contact {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var details: [String] {
        [phoneNumber, email]
    }
    
}

extension Contact {
    static func getContactList() -> [Contact] {
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        for value in 0...DataManager.shared.names.count-1 {
            contacts.append(Contact(name: names[value],
                                    surname: surnames[value],
                                    phoneNumber: phoneNumbers[value],
                                    email: emails[value]))
        }
        
        return contacts
    }
}


