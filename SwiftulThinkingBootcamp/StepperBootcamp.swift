//
//  StepperBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 28.10.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    var body: some View {
        VStack {
            Stepper(value: $stepperValue) {
                Text("Stepper: \(stepperValue)")
                    .padding(50)
            }
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + CGFloat(widthIncrement), height: 100)
            
            Stepper {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                incrementWidth(amount: -10)
            } label: {
                Text("Stepper 2")
            }

        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
