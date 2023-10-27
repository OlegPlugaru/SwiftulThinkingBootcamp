//
//  ForEachBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 22.10.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) \(index)")
            }
            
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
