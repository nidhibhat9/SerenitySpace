//
//  Happy.swift
//  SerenitySpace
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct Happy: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Feeling Happy?")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                Text("Choose a prompt to journal about!")
                Button("Share a happy moment from today.") {
                    
                }
                    
            }
        }
    }
}

#Preview {
    Happy()
}
