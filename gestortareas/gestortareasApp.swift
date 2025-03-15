//
//  gestortareasApp.swift
//  gestortareas
//
//  Created by juan camilo on 13/03/25.
//

import SwiftUI

@main
struct gestortareasApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
