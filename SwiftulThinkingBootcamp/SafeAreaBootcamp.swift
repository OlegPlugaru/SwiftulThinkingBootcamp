//
//  SafeAreaBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 22.10.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )
        
        
        
        
//        ZStack {
//            
//            // background
//            Color.red
//                .ignoresSafeArea()
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                    Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//           // .background(.red)
//        
//        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
