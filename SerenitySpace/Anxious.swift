//
//  Anxious.swift
//  SerenitySpace
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct Anxious: View {
    @State private var showTextField: Bool = false
    @State private var textenter: String = ""
    var body: some View {
        ZStack {
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center, spacing: 30) {
                Text("Feeling Anxoius?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                .padding(.top)
              
                
                Text("Choose a prompt to make you feel better!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                Button("1. What made you feel anxious today?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Answer prompt 1 here...", text: $textenter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                
                
                Button("2. How do you control your worries?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Answer prompt 2 here...", text: $textenter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
               
                Button("3. Have you tried talking to a trusted adult about your feeling? Why or Why not?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Answer prompt 3 here...", text: $textenter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                    
                
                
            }
            
            
        }
        
        
        
    }
}
    #Preview {
        Anxious()
    }
    

