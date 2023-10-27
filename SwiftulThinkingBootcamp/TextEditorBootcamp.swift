//
//  TextEditorBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 27.10.2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    .colorMultiply(.gray.opacity(0.3))
                    .cornerRadius(10)
                Button {
                    savedText = textEditorText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                Text(savedText)
                Spacer()
            }
            .padding()
           // .background(.green)
            .navigationTitle("Texteditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
