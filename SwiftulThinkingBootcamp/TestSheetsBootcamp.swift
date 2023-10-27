//
//  TestSheetsBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 26.10.2023.
//

import SwiftUI

struct TestSheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    @State var sheetOptions: SheetOptions = .firstView
    
    enum SheetOptions {
        case firstView
        case secondView
    }
    var body: some View {
        VStack {
            Button {
                sheetOptions = .firstView
                showSheet.toggle()
            } label: {
                Text("Button 1")
            }
            
            Button {
                sheetOptions = .secondView
                showSheet.toggle()
            } label: {
                Text("Button 2")
            }
        }
        .sheet(isPresented: $showSheet, content: {
            AnyView( getSheet())
        })
    }
    func getSheet() -> any View {
        switch sheetOptions {
        case .firstView:
            return ContentView()
        case .secondView:
            return TextBootcamp()
        }
    }
}

#Preview {
    TestSheetsBootcamp()
}
