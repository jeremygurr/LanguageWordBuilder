//
//  AppState+CoreDataProperties.swift
//  LanguageWordBuilder
//
//  Created by Jonathan Gurr on 2/8/21.
//
//

import Foundation
import CoreData


extension AppStateDB : Identifiable {
	
	@nonobjc public class func fetchRequest() -> NSFetchRequest<AppStateDB> {
		return NSFetchRequest<AppStateDB>(entityName: "AppState")
	}
	
	func save() {
		PersistenceController.shared.save()
	}
	
	@NSManaged public var currentWordIndex: Int32
	@NSManaged public var score: Int16
	@NSManaged public var currentAnswer: String
	@NSManaged public var scrambledLetters: String
	@NSManaged public var numberOfColumns: Int16
	@NSManaged public var isSelected: String
	
}
