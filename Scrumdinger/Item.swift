//
//  Item.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 28/01/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
