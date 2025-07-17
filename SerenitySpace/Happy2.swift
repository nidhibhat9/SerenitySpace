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
    @State private var rec = " "
    var body: some View {
        
        ZStack {
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Thats Great!")
                    .font(.title2)
                    .fontWeight(.heavy)

                Text("We hope you feel better, here are some recommdations:")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .lineLimit(nil)
                
                Button("Click here for a recomendation to stay happy!"){
                    
                }
            }
            
        }
    }
}

#Preview {
    Happy2()
}

