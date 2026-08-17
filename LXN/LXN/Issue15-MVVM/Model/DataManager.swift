//
//  DataManager.swift
//  LXN
//
//  Created by Macbook on 16/8/26.
//

import Foundation
class DataManager {
    // MARK: Singleton
    private static var sharedDataManager: DataManager = {
        let dataManager = DataManager()
        return dataManager
    } ()
    class func shared() -> DataManager {
        return sharedDataManager
    }
    private init() {
    }
    //database
    func getData() -> (String,String) {
        let email = UserDefaults.standard.string(forKey: "email") ?? ""
        let password = UserDefaults.standard.string(forKey: "password") ?? ""
        return (email,password)
    }
    func saveDB(email:String,password:String) {
        UserDefaults.standard.set(email, forKey: "email")
        UserDefaults.standard.set(password, forKey: "password")
        UserDefaults.standard.synchronize()
    }
}
