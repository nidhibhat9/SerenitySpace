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
        NavigationStack {
            
        ZStack {
            Color(Color(hue: 0.842, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .center, spacing: 30){
                Text("Feeling Anxious?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top)
                
                Text("Choose a prompt to journal about and feel better!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                Button("1. What made you anxious today?") {
                    showTextField = 1
                    textenter = ""
                }
                
                Button("2. Have you talked to a trusted adult to vent to?" ) {
                    showTextField = 2
                    textenter = ""
                }
                
                Button("3. Think about how you can handle this feeling. Maybe you can do the same thing again?") {
                    showTextField = 3
                    textenter = ""
                }
                if showTextField != 0 {
                    TextField("Answer prompt #\(showTextField) here...", text: $textenter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.top,15)
                        .font(.title)
                        .fontWeight(.bold)
                }
                    Spacer()
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                
               
                NavigationLink(destination: Anxious2()) {
                    Text("Submit!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.mint)
                }
                Spacer ()
                .padding(.bottom, 30)
                }
                }
            }
           
        }
    }

#Preview {
    Anxious()
}
    

