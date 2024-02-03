//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Bruna Mello on 03/02/2024.
//

import SwiftUI

struct MeetingHeaderView: View {
    
    let secondElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalseconds: Int {
        secondElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalseconds > 0 else {
            return 1
        }
        return Double(secondElapsed) / Double(totalseconds)
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondsRemaining)", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
        .accessibilityLabel("Time Remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }
}

#Preview {
    MeetingHeaderView(secondElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
        .previewLayout(.sizeThatFits)
}
