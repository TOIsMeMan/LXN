//
//  LoginViewModel.swift
//  LXN
//
//  Created by Macbook on 16/8/26.
//

import Foundation
final class LoginViewModel {
    var email : String = ""
    var password : String = ""
    enum loginResult {
        case success
        case failure (Bool,String)
    }
    init(email:String,password:String) {
        self.email = email
        self.password = password
    }
    //MARK: Alias
    typealias LoginCompletion = (loginResult) -> Void
    //MARK: -ACTION
    func login(email:String,password:String,completion:LoginCompletion) {
        
        if email.isEmpty || password.isEmpty {
           completion(.failure(true,"Email or password is empty"))
        }
        else {
            self.email = ""
            self.password = ""
            
            DataManager.shared().saveDB(email: email, password: password)
            
            completion(.success)
        }
        
        
    }
}
