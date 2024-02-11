//
//  SpeakerArc.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 11/02/2024.
//

import SwiftUI

struct SpeakerArc: Shape {
    let spearkerIndex: Int
    let totalSpeakers: Int
    
    private var degreesPerSpeaker: Double {
        360.0 / Double(totalSpeakers)
    }
    
    private var starAngle: Angle {
        Angle(degrees: degreesPerSpeaker * Double(spearkerIndex) + 1.0)
    }
    
    private var endAngle: Angle {
        Angle(degrees: starAngle.degrees + degreesPerSpeaker - 1.0)
    }
    
    func path(in rect: CGRect) -> Path {
        let diameter = min(rect.size.width, rect.size.height) - 24.0
        let radius = diameter / 2.0
        let center = CGPoint(x: rect.midX, y: rect.midY)
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: starAngle, endAngle: endAngle, clockwise: false)
        }
    }
}

