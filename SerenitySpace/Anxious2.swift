//
//  Anxious2.swift
//  SerenitySpace
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct Anxious2: View {
    
    let recs = [
        "Go outside for a stroll",
        "Stroke your pets fur",
        "Cook your favorite dish",
        "Paint your Nails",
        "Play with a stress ball",
        "Hangout with Friends",
        "Watch or rewatch a movie/show",
        "Eat your favorite foods",
        "Read books",
        "Go ouside to the park and look at nature",
        "Listen to music",
        "play bored games"
    ]
    @State private var someRecs = ""
    
    
    
    var body: some View {
        ZStack {
            Color(Color(hue: 0.47, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            VStack(spacing:30) {
                Text("Thank you for journaling your thoughts! Here are some recommendations to keep improving your mental health and feel good :)")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .top)
                
                    .foregroundColor(Color(hue: 0.75, saturation: 0.3, brightness: 0.99))
                    .multilineTextAlignment(.center)
               
                Text("💜🩵💙")
            
                
            
                Button("Get a recommendation here!") {
                    someRecs = recs.randomElement() ?? "Take 3 deep breaths"                }
                Text(someRecs)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    
                    
                                           }
            
        }
    }
}

#Preview {
    Anxious2()
}
