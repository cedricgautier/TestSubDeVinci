//
//  DataController.swift
//  TestSubDeVinci
//
//  Created by Cedric on 19/04/2024.
//

import Foundation


import SwiftUI
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name: "AppStorage")
    
    init() {
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }}
    }
}
