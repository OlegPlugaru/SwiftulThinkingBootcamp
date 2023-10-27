//
//  NavigationViewBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 23.10.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
           // .navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
            leading: 
                HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
            trailing: NavigationLink(destination: MyOtherScreen(), label: {
                Image(systemName: "gear")
                
            })
            .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen!")
              //  .navigationBarHidden(true)
               
            
            
            VStack {
                Button("BACK BUTTON") {
                    dismiss()
                }
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
            
           
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
