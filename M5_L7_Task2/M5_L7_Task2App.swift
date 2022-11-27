//
//  M5_L7_Task2App.swift
//  M5_L7_Task2
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

@main
struct M5_L7_Task2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StarterScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(Status())
        }
    }
}
