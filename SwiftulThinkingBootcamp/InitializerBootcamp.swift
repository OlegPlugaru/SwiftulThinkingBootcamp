//
//  InitializerBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 22.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    
    HStack {
        InitializerBootcamp(count: 50, fruit: .orange)
        InitializerBootcamp(count: 34, fruit: .apple)
    }
}
