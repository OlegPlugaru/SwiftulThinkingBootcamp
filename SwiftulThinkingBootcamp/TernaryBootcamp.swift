//
//  TernaryBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 22.10.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE.")
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 100 : 50
                )
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
