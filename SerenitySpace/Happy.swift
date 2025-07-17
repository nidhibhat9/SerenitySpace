//
//  Happy.swift
//  SerenitySpace
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct Happy: View {
    @State private var journalBox: String = ""
    @State private var selectedPrompt: Int? = nil

    var body: some View {
        ZStack {
            Color(Color(hue: 0.842, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Glad to hear you're feeling Happy!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.777, saturation: 0.971, brightness: 0.532))
                    .multilineTextAlignment(.center)
                    .padding(40)

                Spacer()

                if selectedPrompt == nil {
                    Text("Choose a prompt to journal about!")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    

                    Button("What made you smile today?") {
                        selectedPrompt = 1
                    }
                    .foregroundColor(Color(hue: 0.777, saturation: 0.961, brightness: 0.581))
                    .padding(40)

                    Button("What are you most grateful for?") {
                        selectedPrompt = 2
                    }
                    .foregroundColor(Color(hue: 0.777, saturation: 0.961, brightness: 0.581))
                    .padding(40)


                    Button("What's a happy memory you cherish?") {
                        selectedPrompt = 3
                    }
                    .foregroundColor(Color(hue: 0.777, saturation: 0.961, brightness: 0.581))
                    .padding(40)

                }

                if selectedPrompt != nil {
                    Text("Great! Start Journaling!")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color(hue: 0.772, saturation: 1.0, brightness: 0.52))
                    TextField("Journal your answer here:", text: $journalBox)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    NavigationLink(destination: Happy2()) {
                        Text("Submit")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color(hue: 0.815, saturation: 0.418, brightness: 0.847))
                            .cornerRadius(10)
                            .font(.headline)
                    }

                    Button("Back") {
                        selectedPrompt = nil
                        journalBox = ""
                    }
                    .foregroundColor(.black)
                    .padding(.top)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    Happy()
}
