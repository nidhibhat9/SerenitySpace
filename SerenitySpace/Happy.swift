//
//  Happy.swift
//  SerenitySpace
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct Happy: View {
    @State private var journalBox: String = ""
    @State private var showTextField1: Bool = false
    @State private var showTextField2: Bool = false
    @State private var showTextField3: Bool = false

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
                Text("Choose a prompt to journal about!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Spacer()
                
                Button("What made you smile today?") {
                    showTextField1 = true
                }
               
                Button("What are you most grateful for?") {
                    showTextField2 = true
                }
                
               
                Button("What's a happy memory you cherish?") {
                    showTextField3 = true
                }
                
                
                if showTextField1 {
                    TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    NavigationLink(destination: Happy2()) {
                        Text("Submit")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color(hue: 0.815, saturation: 0.418, brightness: 0.847))
                            .cornerRadius(10)
                            .font(.headline)
                        }

                    }
                }
            
            
            if showTextField2 {
                TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                NavigationLink(destination: Happy2()) {
                    Text("Submit")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color(hue: 0.815, saturation: 0.418, brightness: 0.847))
                        .cornerRadius(10)
                        .font(.headline)
                    }

                }
            }
        
        
        if showTextField3 {
            TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            NavigationLink(destination: Happy2()) {
                Text("Submit")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color(hue: 0.815, saturation: 0.418, brightness: 0.847))
                    .cornerRadius(10)
                    .font(.headline)
                }

            }
        }
                    
            }

#Preview {
    Happy()
}
