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
        "Eat your favorite foods"
    ]
    @State private var someRecs = ""
    
    
    
    var body: some View {
        ZStack {
            Color(Color(hue: 0.47, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
            VStack(spacing:30) {
                Text("THANK YOU FOR SUBMITTING!!")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(hue: 0.77, saturation: 0.364, brightness: 0.869))
                Text("We hope you feel better, here are some recommdations")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.779, saturation: 0.389, brightness: 0.84))
                    .lineLimit(nil)
                Text("💜🩵💙")
                Text(someRecs)
                    .font(.title2)
                    .padding()
                
            
                Button("RECOMMENDATIONS") {
                    someRecs = recs.randomElement() ?? "Take 3 deep breaths"                }
               
                    
                    
                                           }
            
        }
    }
}

#Preview {
    Anxious2()
}
