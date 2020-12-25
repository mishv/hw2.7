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

//extension Contact {
//    static func getContactList() -> [Contact] {
//        var contacts: [Contact] = []
//        let dm = DataManager()
//
//        for _ in 1...4 {
//            contacts.append(Contact(name: dm.names.remove(at: Int.random(in: 0...dm.names.count-1)),
//                                    surname: dm.surnames.remove(at: Int.random(in: 0...dm.surnames.count-1)),
//                                    phoneNumber: dm.phoneNumbers.remove(at: Int.random(in: 0...dm.phoneNumbers.count-1)),
//                                    email: dm.emails.remove(at: Int.random(in: 0...dm.emails.count-1))))
//        }
//
//
//
//        return contacts
//
//    }
//}