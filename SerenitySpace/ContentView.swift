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
                    .padding(.top, 40)
                
                Image("emotions")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                
                HStack {
                    Button("Happy") {
                        
                    }
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
                    .font(.title)
                    Button("Anxious") {
                        
                    }
                    .padding()
                    .background(Color.pink)
                    .cornerRadius(15)
                    .font(.title)
                    Button("Sad!") {
                        
                    }
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    .font(.title)
                    
                }
            }
            .padding()
            
            
            
        }
    }
    
}
#Preview {
    ContentView()
}
