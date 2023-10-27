//
//  IconsBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fit)
           // .scaledToFill()
            //.font(.caption)
            // .font(.system(size: 200))
           // .foregroundColor(Color.red)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
