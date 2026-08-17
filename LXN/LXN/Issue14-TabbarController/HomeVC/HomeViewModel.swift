//
//  HomeViewModel.swift
//  LXN
//
//  Created by Macbook on 17/8/26.
//

import Foundation
import UIKit

class HomeViewModel {
    var email = ""
    var password = ""
    
    func fetchData(completion:(Bool,String,String) -> () ) {
        let data = DataManager.shared().getData()
        let email = data.0
        let password = data.1
        if (email == "" || password == "") {
            completion(false,"","")
            
        }
        else {
            self.email = email
            self.password = password
            completion(true,email,password)
        }
    }
    
       
    }
    
