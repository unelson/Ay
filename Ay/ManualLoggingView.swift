//
//  ManualLoggingView.swift
//  Ay
//
//  Created by U Nelson on 15/12/2024.
//


import SwiftUI

struct ManualLoggingView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var eventText: String = ""
    @State private var category: String = ""
    @State private var submitted: Bool = false

    var body: some View {
        VStack {
            Text("Log an Event")
                .font(.title)
                .padding()

            TextField("What event would you like predicted?", text: $eventText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Category (e.g., Travel, Weather)", text: $category)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                let newEvent = LoggedEvent(context: moc)
                newEvent.eventDescription = eventText
                newEvent.category = category
                newEvent.date = Date()

                try? moc.save()
                submitted = true
                eventText = ""
                category = ""
            }) {
                Text("Submit")
                    .font(.headline)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            if submitted {
                Text("Event submitted!")
                    .foregroundColor(.green)
                    .padding()
            }
        }
        .padding()
    }
}
