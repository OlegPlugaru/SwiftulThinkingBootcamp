//
//  TextBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftul Thinking Bootkamp. I am really enjoying this course and learning alot.".capitalized)
        // .font(.body)
        // .fontWeight(.semibold)
        // .underline()
        // .underline(color: Color.red)
        //            .italic()
        //            .strikethrough(color: Color.green)
        //            .font(.system(size: 24,weight: .semibold, design: .rounded))
        //.baselineOffset(-50.0)
        //  .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
