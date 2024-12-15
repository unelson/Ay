//
//  PreloadedSuggestionsView.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//


import SwiftUI

struct PreloadedSuggestionsView: View {
    @State private var suggestions = [
        "Traffic delays",
        "Rain expected",
        "Meeting reminders",
        "Flight cancellations",
        "Package deliveries"
    ]

    @State private var votes = [0, 0, 0, 0, 0]

    var body: some View {
        List {
            ForEach(suggestions.indices, id: \.self) { index in
                HStack {
                    Text(suggestions[index])
                    Spacer()
                    Button(action: {
                        votes[index] += 1
                    }) {
                        Text("👍 \(votes[index])")
                            .padding(5)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    }
                }
            }
        }
        .navigationTitle("Suggestions")
    }
}
