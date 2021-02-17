//
//  User.swift
//  Clubhouse (iOS)
//
//  Created by Florian Mari on 16/02/2021.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    let name: String
    
    func example() -> [User] {
        return [
            User(name: "Florian Mari"),
            User(name: "Matthieu Chedid"),
            User(name: "Mark Zuckerberg"),
            User(name: "John Doe"),
            User(name: "Kanye West"),
        ]
    }
}
