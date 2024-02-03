//
//  ScrumTimer.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 03/02/2024.
//

import Foundation

class ScrumTimer: ObservableObject {
    @Published var activeSpeaker = ""
    @Published var secondsElapsed = 0
    @Published var secondsRemaining = 0
}
