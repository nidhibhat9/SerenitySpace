//
//  Anxious 2.0.swift
//  SerenitySpace
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct Anxious_2_0: View {
    var body: some View {
        ZStack {
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            VStack {
                Text("THANK YOU FOR SUBMITTING!!")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("We hope you feel better, here are some recommdations")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .lineLimit(nil)
            }
            
        }
    }
}

#Preview {
    Anxious_2_0()
}
