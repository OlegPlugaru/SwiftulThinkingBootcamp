//
//  ContextMenuBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 27.10.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiiftul Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }
            
        })
        .cornerRadius(30)
    }
}

#Preview {
    ContextMenuBootcamp()
}
