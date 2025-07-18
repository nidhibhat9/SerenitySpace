//
//  Sad.swift
//  SerenitySpace
//
//  Created by aanya kungwani on 7/16/25.
//

import SwiftUI
struct Sad: View {
    @State private var showTextField: Int = 0
    @State private var textenter: String = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(Color(hue: 0.842, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .center, spacing: 30){
                    Text("Feeling Sad?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top)
                    
                    Text("Choose a prompt to journal about!")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black)
                    
                    Button("1. What’s been weighing on your mind lately? Let it all out <3") {
                        showTextField = 1
                        textenter = ""
                    }
                    
                    Button("2. You’re feeling sad, and that’s okay. What’s one thing you wish someone would say to you right now? " ) {
                        showTextField = 2
                        textenter = ""
                    }
                    
                    Button("3. You’ve made it through hard days before — what’s something that helped you feel better in the past when you felt low?") {
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
                    
                    Spacer()
                    .padding(.bottom, 30)
                    
                }
            }
        }
    }
}
#Preview {
    Sad()
}
