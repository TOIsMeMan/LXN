//
//  User.swift
//  LXN
//
//  Created by Macbook on 12/8/26.
//

import Foundation
import Foundation

final class User13 {
    var name: String
    var avatar: String
    
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }
}

extension User13 {
    static func getDummyDatas() -> [User13] {
        var users: [User13] = []
        
        for i in 1...30 {
            let user = User13(name: "User \(i)", avatar: "\(i%10)")
            users.append(user)
        }
        
        return users
    }
}
