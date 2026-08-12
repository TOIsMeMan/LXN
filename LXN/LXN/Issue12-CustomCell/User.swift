//
//  User.swift
//  LXN
//
//  Created by Macbook on 12/8/26.
//

import Foundation
final class User {
    var name: String
    var age: Int
    var gender: Bool
    init(name: String, age: Int, gender: Bool) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    func getInfo() -> String {
        return "\(name) \(age) \(gender)"
    }
    
}
