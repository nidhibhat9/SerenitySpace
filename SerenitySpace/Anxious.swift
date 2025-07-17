//
//  Anxious.swift
//  SerenitySpace
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct Anxious: View {
    @State private var showTextField: Int = 0
    @State private var textenter: String = ""
    var body: some View {
        ZStack {
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center, spacing: 30) {
                Text("Feeling Anxious?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.771, saturation: 0.953, brightness: 0.462))
                .padding(.top)
              
                
                Text("Choose a prompt to make you feel better!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Button("1. What made you feel anxious today?") {
                    showTextField = 1
                    textenter = ""                }
                
                        .padding()
                }
                
                
                Button("2. How do you control your worries?") {
                    showTextField = 2
                    textenter = ""                }
                
                        .padding()
                }
               
                Button("3. Have you tried talking to a trusted adult about your feeling? Why or Why not?") {
                    showTextField = 2
                    textenter = ""
                }
        if showTextField != 0 {
            TextField("Answer prompt #\(showTextField) here...", text: $textenter)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.top,15)
                .font(.title)
                .fontWeight(.bold)                }
                    
                Button("SUBMIT") {
                }
                    .padding()
                    .background(Color(hue: 0.758, saturation: 0.973, brightness: 0.319))
                    .cornerRadius(15)
                    .font(.title)
                
            }
            
            
        }
        
        
        
    
    #Preview {
        Anxious()
    }
    

