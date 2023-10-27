//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.6572365165, green: 0.230971694, blue: 0.933696568, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                            Text("5")
                                .font(.headline)
                                .foregroundColor(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.6572365165, green: 0.230971694, blue: 0.933696568, alpha: 0.5)), radius: 10, x: 5, y: 5)
                    })
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
