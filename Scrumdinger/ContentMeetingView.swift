//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 28/01/2024.
//

import SwiftUI

struct ContentMeetingView: View {
    var body: some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentMeetingView()
    }
}
