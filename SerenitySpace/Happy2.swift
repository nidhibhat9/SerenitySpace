//
//  Happy2.swift
//  SerenitySpace
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct Happy2: View {
    
    let arr = [ "Write a gratitude list",
    "Do a random act of kindness", "Create a vision board" , "Start a new hobby" , "Write a letter to your future self"
    ]
    @State private var recs = ""

    var body: some View {
    ZStack {
        Color(Color(hue: 0.47, saturation: 0.114, brightness: 0.973)).edgesIgnoringSafeArea(.all)
        VStack(alignment: .center, spacing: 30) {
            Text("Thank you for journaling your thoughts! Here are some recommendations to stay happy and share your happiness with others! ")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .top)
            
                .foregroundColor(Color(hue: 0.75, saturation: 0.3, brightness: 0.99))
                .multilineTextAlignment(.center)
            Text("💜🩵💙")
            Button("Get a recommendation here!") {
                recs = arr.randomElement() ?? "Take 3 deep breaths"
            }
           
            Text(recs)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
        }
        .padding()
    }
}
}
#Preview {
    Happy2()
}

