//
//  GradientsBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
                // Color.red
//                LinearGradient(gradient: Gradient(colors: [Color(Color.cyan), Color.blue]),
//                               startPoint: .topLeading,
//                               endPoint: .bottom)
//                RadialGradient(gradient: Gradient(colors: [.cyan, .blue]), center: .topLeading, startRadius: 5, endRadius: 400)
                AngularGradient(gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                center: .topLeading,
                                angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
