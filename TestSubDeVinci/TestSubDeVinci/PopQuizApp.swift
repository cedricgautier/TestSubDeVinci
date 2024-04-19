//
//  TestSubDeVinciApp.swift
//  TestSubDeVinci
//
//  Created by Guillaume on 16/04/2024.
//  Renamed to PopQuizApp by Cedric Gautier

import SwiftUI

@main
struct PopQuizApp: App {
    @StateObject private var dataController =  DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // Data de base au lancement de l'application
                .environment(\.managedObjectContext,dataController.container.viewContext)
        }
    }
}
