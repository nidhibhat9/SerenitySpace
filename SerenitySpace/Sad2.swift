//
//  Sad2.swift
//  SerenitySpace
//
//  Created by aanya kungwani on 7/17/25.
//

import SwiftUI
struct Sad2: View {
    
    let recs = [
        "Go on a walk",
        "Bake a sweet treat",
        "Watch your favorite comedy",
        "Do a creative dump in a journal",
        "Make a comfort playlist",
        "Clean your space",
        "Call a friend or sibling",
        "Write a letter to your future self",
        "Watch the sunset/sunrise",
        "Have a family game night",
        "Scroll through your happy moments in your camera roll"
    ]
    @State private var someRecs = ""
    
    var body: some View {
        ZStack {
            Color(Color(hue: 0.47, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 30) {
                Text("Thank you for journaling your thoughts! Here are some recommendations to keep improving your mental health and feel good :) ")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .top)
                
                    .foregroundColor(Color(hue: 0.75, saturation: 0.3, brightness: 0.99))
                    .multilineTextAlignment(.center)
                Button("Get a recommendation here!") {
                    someRecs = recs.randomElement() ?? "Take 3 deep breaths"
                }
                Text(someRecs)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue:0.6, saturation: 0.32, brightness: 1.0))
                    .padding()
            }
            .padding()
        }
    }
}
    #Preview {
        Sad2()
    }

