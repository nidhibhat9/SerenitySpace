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
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            VStack(spacing:30) {
                Text("THANK YOU FOR SUBMITTING!!")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("We hope you feel better, here are some recommdations")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .lineLimit(nil)
                Text("💜🩵💙")
                Text(someRecs)
                    .font(.title2)
                    .padding()
                
            
                Button("RECOMMENDATIONS") {
                    
                }
            }
            
        }
    }
}

#Preview {
    Anxious2()
}
