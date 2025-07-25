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
                    Text("Serenity Space!")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 0.76, saturation: 0.956, brightness: 0.571))
                    Text("How are you feeling today?")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                        .foregroundColor(Color(hue: 0.793, saturation: 0.99, brightness: 0.6))
                
                            Image("emotions")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 400)
                    
                    HStack {
                        NavigationLink(destination: Happy()){
                            Text("Happy")
                                .padding()
                                .background(Color(hue: 0.47, saturation: 0.114, brightness: 0.973))
                                .cornerRadius(15)
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: Anxious()){
                            Text("Anxious")
                                .padding()
                                .background(Color(hue: 0.47, saturation: 0.114, brightness: 0.973))
                                .cornerRadius(15)
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: Sad()){
                            Text("Sad")
                                .padding()
                                .background(Color(hue: 0.47, saturation: 0.114, brightness: 0.973))
                                .cornerRadius(15)
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                        
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
    
