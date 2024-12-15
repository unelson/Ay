//
//  func.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//


import Foundation
import CoreData

extension LoggedEvent {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<LoggedEvent> {
        return NSFetchRequest<LoggedEvent>(entityName: "LoggedEvent")
    }

    @NSManaged public var eventDescription: String?
    @NSManaged public var date: Date?
    @NSManaged public var category: String?
}

extension LoggedEvent: Identifiable { }
