//
//  CoreDataManager.swift
//  FinancialApp
//
//  Created by Craig Clayton on 6/30/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager: ObservableObject {
    static var shared = CoreDataManager()
    
    private init() {
        persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
    }
    public var context: NSManagedObjectContext {  // (1)
        get {
            return self.persistentContainer.viewContext
        }
    }
    
    var persistentContainer: NSPersistentContainer = { // (2)
        let container = NSPersistentContainer(name: "FinancialApp")
        container.loadPersistentStores { (storeDescription, error) in
            guard error == nil else {
                print(error?.localizedDescription as Any)
                return
            }
        }
        return container
    }()
    
    func save() {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}
