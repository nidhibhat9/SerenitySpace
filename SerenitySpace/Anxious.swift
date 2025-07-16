//
//  Anxious.swift
//  SerenitySpace
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct Anxious: View {
    var body: some View {
        VStack {
            Text("Anxious Prompt Questions")
                .font(.title)
                .fontWeight(.bold)
            

            
            
            Text("Why are you feeling anxious? What made you feel this way?")
            TextField("      Tell us why you feel anxious? ", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)}
        
    }
    

        }
        



#Preview {
    Anxious()
}
