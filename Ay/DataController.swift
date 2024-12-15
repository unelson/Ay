//
//  DataController.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//


import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "AyDataModel") // Updated Core Data model name

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
