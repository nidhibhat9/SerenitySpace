//
//  Sad.swift
//  SerenitySpace
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI
struct Happy: View {
    @State private var showTextField: Int = 0
    @State private var textenter: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(Color(hue: 0.842, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .center, spacing: 30){
                    Text("Glad to hear you're feeling happy!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                    
                    Text("Choose a prompt to journal about!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black)
                    
                    Button("1. What made you smile today?") {
                        showTextField = 1
                        textenter = ""
                    }
                    
                    Button("2. What are you most grateful for?" ) {
                        showTextField = 2
                        textenter = ""
                    }
                    
                    Button("3. What's a happy memory you cherish?") {
                        showTextField = 3
                        textenter = ""
                    }
                    if showTextField != 0 {
                        TextField("Answer prompt #\(showTextField) here...", text: $textenter)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.top,15)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                    }
                    Spacer()
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    NavigationLink(destination: Sad2()){
                        Text("SUBMIT")
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
    Happy()
}

