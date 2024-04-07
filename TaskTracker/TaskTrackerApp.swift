//
//  TaskTrackerApp.swift
//  TaskTracker
//
//  Created by Narayan Shettigar on 07/04/24.
//

import SwiftUI

@main
struct TaskTrackerApp: App {
    @StateObject var listViewModel : ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
