//
//  StatisticsView.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//


import SwiftUI

struct StatisticsView: View {
    @FetchRequest(
        entity: LoggedEvent.entity(),
        sortDescriptors: []
    ) var loggedEvents: FetchedResults<LoggedEvent>

    var body: some View {
        VStack {
            Text("Statistics")
                .font(.largeTitle)
                .padding()

            Text("Total Events Logged: \(loggedEvents.count)")
                .font(.headline)
                .padding()

            // Additional stats can be added here
        }
        .padding()
    }
}
