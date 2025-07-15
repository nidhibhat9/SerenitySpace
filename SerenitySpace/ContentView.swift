//
//  ContentView.swift
//  SerenitySpace
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("How are you feeling today?")
                    .font(.title)
                    .fontWeight(.bold)
                Color("AccentColor")
                Image("emotions")
                    .resizable()
                
            }
            HStack {
                Button("Happy") {
                }
                Spacer()
                Button("Anxious") {
                    
                }
                Spacer()
                Button("Sad") {
                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
