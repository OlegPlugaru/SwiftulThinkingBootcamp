//
//  IntroView.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(colors: [.blue, .purple], center: .topLeading, startRadius: 5 , endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            
            if currentUserSignedIn {
               ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
          
        }
    }
}

#Preview {
    IntroView()
}
