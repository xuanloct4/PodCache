//
//  PodCacheApp.swift
//  PodCache
//
//  Created by loctv1 on 22/03/2024.
//

import SwiftUI
import SwiftData
//import Alamofire
//import Kingfisher
//import AFNetworking
//import Kingfisher
//import SDWebImage
//import SnapKit

@main
struct PodCacheApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
