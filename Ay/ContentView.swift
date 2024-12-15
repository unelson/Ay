//
//  ContentView.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to the Ayla Pre-Alpha Release")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: ManualLoggingView()) {
                    Text("Log an Event")
                        .font(.headline)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                NavigationLink(destination: PreloadedSuggestionsView()) {
                    Text("Vote on Suggestions")
                        .font(.headline)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                NavigationLink(destination: StatisticsView()) {
                    Text("View Statistics")
                        .font(.headline)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
        }
    }
}
