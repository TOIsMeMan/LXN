//
//  CoredataManager.swift
//  democoredata
//
//  Created by Macbook on 4/9/26.
//

import Foundation
import CoreData
import UIKit

final class CoreDataManager {
    
    static let shared = CoreDataManager()

    private init() {}
    
    func fetchUser() -> [User] {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return [] }
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        do {
            let result = try context.fetch(fetchRequest)
            return result
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    
}
