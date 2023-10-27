//
//  PaddingAndSpacerBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 22.10.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    
    
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this scree. It is multiple lines and we will align the text to the leading edge.")
        }
        //  .background(.blue)
        
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),
                        radius: 10,
                        x: 0.0, y: 10.0)
        )
        .padding(.horizontal, 10)
        // .background(.green)
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
