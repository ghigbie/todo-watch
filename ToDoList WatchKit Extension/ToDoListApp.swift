//
//  ToDoListApp.swift
//  ToDoList WatchKit Extension
//
//  Created by George Higbie on 3/31/21.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
