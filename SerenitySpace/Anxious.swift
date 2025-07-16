//
//  Anxious.swift
//  SerenitySpace
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct Anxious: View {
    var body: some View {
        ZStack {
            Color(hue: 0.842,saturation: 0.114, brightness: 0.973 ).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Feeling Anxoius?")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Choose a prompt to journal about!")
                Button("Share a happy moment from today.") {
                    
                }
                
                
                
                
                
            }
            
            
        }
        
        
        
        
    }
}
    #Preview {
        Anxious()
    }
    

