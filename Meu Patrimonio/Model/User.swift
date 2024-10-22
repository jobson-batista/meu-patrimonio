//
//  User.swift
//  Meu Patrimonio
//
//  Created by Jobson Batista on 19-10-2024.
//

import Foundation

struct User {
    
    var id: UUID
    var email: String
    var password: String
    var name: String
    var dateCreated: Date
    var dateLastUpdated: Date
    var isActive: Bool = true
    
    var wealth: Wealth
    
    // constructor
    init(id: UUID, email: String, password: String, name: String, dateCreated: Date, dateLastUpdated: Date, isActive: Bool, wealth: Wealth) {
        self.id = id
        self.email = email
        self.password = password
        self.name = name
        self.dateCreated = dateCreated
        self.dateLastUpdated = dateLastUpdated
        self.isActive = isActive
        self.wealth = wealth
    }
    
    func toString() {
        print("User Info:")
        print("ID: \(id)")
        print("Name: \(name)")
        print("Email: \(email)")
        print("Net Worth: \(wealth.netWorth)")
    }
}
