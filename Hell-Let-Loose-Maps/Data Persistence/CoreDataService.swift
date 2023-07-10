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
        let container = NSPersistentContainer(name: "People")
        
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
    
    func addPerson(with name: String) {
        let person = NSEntityDescription.insertNewObject(forEntityName: "Person", into: persistentContainer.viewContext)
        person.setValue(name, forKey: "name")
    }
    
    func removePerson(with name: String, jobTitle: String, country: String) {
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "%K == %@",
                                             argumentArray: ["name", "jobTitle", "country"])
        do {
            guard let person = try persistentContainer.viewContext.fetch(fetchRequest).first else {
                // no fruit :(
                return
            }
            persistentContainer.viewContext.delete(person)
        } catch let error {
        print("Failed to delete animal \(error)")
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
    func insertPerson(name: Any) {
        let person = Person(context: self.persistentContainer.viewContext)
        }
        
        
}
