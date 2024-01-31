//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 28/01/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
