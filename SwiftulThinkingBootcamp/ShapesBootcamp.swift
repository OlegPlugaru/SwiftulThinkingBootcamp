//
//  ShapesBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 21.10.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
      //  Ellipse()
       // Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
           //.foregroundColor(.pink)
            //.stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
            //.stroke(Color.red)
           // .stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 2.0)
          //  .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.4, to: 1.0)
           // .stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
