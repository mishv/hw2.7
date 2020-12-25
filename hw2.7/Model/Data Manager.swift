//
//  Data Manager.swift
//  hw2.7
//
//  Created by Misha on 24.12.2020.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    var names = [
        "John",
        "Mike",
        "Steve",
        "Robin"
    ]
    
    var surnames = [
        "Brown",
        "Black",
        "Green",
        "Red"
    ]
    
    var phoneNumbers = [
        "8999",
        "8921",
        "8931",
        "8906"
    ]
    
    var emails = [
        "1@a",
        "2@b",
        "3@c",
        "4@d"
    ]
    
    
    
}
