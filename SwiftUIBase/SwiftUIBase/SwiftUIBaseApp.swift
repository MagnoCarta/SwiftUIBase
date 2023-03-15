//
//  SwiftUIBaseApp.swift
//  SwiftUIBase
//
//  Created by Gilberto Magno on 14/03/23.
//

import SwiftUI

@main
struct SwiftUIBaseApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
