//
//  CoreDataService.swift
//  
//
//  Created by Micah Burnside on 04/12/22.
//
import UIKit
import Foundation
import CoreData

class CoreDataService: NSObject {

    static let shared: CoreDataService = {
        return CoreDataService()
    }()

    private let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ToggleSwitchChoice")
        
        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Fail to load persistent stores \(error)")
            }
        }
        return container
    }()
    
    var context: NSManagedObjectContext {
        return self.persistentContainer.viewContext
    }
    
    func addMap(with name: String) {
        let map = NSEntityDescription.insertNewObject(forEntityName: "Map", into: persistentContainer.viewContext)
        map.setValue(name, forKey: "name")
    }
    
    func removePerson(with name: String, jobTitle: String, country: String) {
        let fetchRequest: NSFetchRequest<Map> = Map.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "%K == %@",
                                             argumentArray: ["name"])
        do {
            guard let map = try persistentContainer.viewContext.fetch(fetchRequest).first else {
                // no map :(
                return
            }
            persistentContainer.viewContext.delete(map)
        } catch let error {
        print("Failed to delete map \(error)")
        }
        
    }

    
    func saveContext(backgroundContext: NSManagedObjectContext? = nil) {
        let context = backgroundContext ?? context
        guard context.hasChanges else { return }
        do {
            try context.save()
        } catch let error as NSError {
            print("Error: \(error), \(error.userInfo)")
        }
    }
    func insertMap(name: Any) {
        let map = Map(context: self.persistentContainer.viewContext)
        }
        
        
}
