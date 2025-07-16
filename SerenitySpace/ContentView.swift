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
            ZStack {
                Color(hue: 0.842, saturation: 0.114, brightness: 0.973).edgesIgnoringSafeArea(.all)
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
                        NavigationLink(destination: Happy()){
                            Text("Happy")
                                .padding()
                                .background(Color.yellow)
                                .cornerRadius(15)
                                .font(.title)
                        }
                        NavigationLink(destination: Anxious()){
                            Text("Anxious")
                                .padding()
                                .background(Color.pink)
                                .cornerRadius(15)
                                .font(.title)
                        }
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
}
#Preview {
    ContentView()
}

