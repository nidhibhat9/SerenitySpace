//
//  Happy.swift
//  SerenitySpace
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct Happy: View {
    @State private var journalBox: String = ""
    @State private var showTextField: Bool = false
    var body: some View {
        ZStack {
            Color(Color(hue: 0.842, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Glad to hear you're feeling Happy!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(40)
                Spacer()
                Text("Choose a prompt to journal about!")
                Button("What made you smile today?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                Button("What are you most grateful for?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                Button("What's a happy memory you cherish?") {
                    showTextField.toggle()
                }
                if showTextField {
                    TextField("Journal your answer here:", text: $journalBox) .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                }
                    
            }
        }
    }
}

#Preview {
    Happy()
}
