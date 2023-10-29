//
//  AppstorageBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 29.10.2023.
//

import SwiftUI

struct AppstorageBootcamp: View {
    
  //  @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppstorageBootcamp()
}
