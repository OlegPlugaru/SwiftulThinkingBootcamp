//
//  ToggleBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 27.10.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
                    
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
