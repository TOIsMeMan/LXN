//
//  UserAPI.swift
//  LXN
//
//  Created by Macbook on 22/8/26.
//

import Foundation
enum UserAPI {
    case getUser
}
extension UserAPI: APITarget {
    var baseURL: String {
        return "https://jsonplaceholder.typicode.com"
    }
    var path: String {
        switch self {
        case .getUser :
            return "/users"
        }
    }
    var method : HTTPMethod {
        switch self {
        case .getUser :
            return .get
        }
    }
    var headers: [String : String]? {
        return [
            "Accept" : "application/json"
        ]
    }
    var body: Data? {
        return nil
    }
    var queryItems: [URLQueryItem]? {
        return nil
    }
    
}

