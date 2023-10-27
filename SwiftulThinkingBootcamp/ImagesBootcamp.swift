//
//  ImagesBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("apple")
            //.renderingMode(.template)
            .resizable()
           // .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
          //  .clipped()
            //.cornerRadius(150)
//            .clipShape(
//                Ellipse()
//            )
    }
}

#Preview {
    ImagesBootcamp()
}
