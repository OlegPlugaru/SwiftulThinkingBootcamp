//
//  PickerBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 27.10.2023.
//

import SwiftUI
import UIKit

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
    "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection) {
            ForEach(filterOptions.indices, id: \.self) { index in
            Text(filterOptions[index])
                    .tag(filterOptions[index])
            }
        } label: {
            Text("Picker")
        }
        .pickerStyle(.segmented)
        //.background(.red)

        
        
        
//        Picker(selection: $selection) {
//            ForEach(filterOptions, id: \.self) {option in
//                HStack {
//                    Text(option)
//                    Image(systemName: "heart.fill")
//                }
//                .tag(option)
//            }
//            } label: {
//                HStack {
//                    Text("Filter")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(.blue)
//                .cornerRadius(10)
//                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)
//            }
//            .pickerStyle(MenuPickerStyle())
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection) {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                } label: {
//                    Text("Picker")
//                }
//            .pickerStyle(.wheel)
//            //.background(.gray.opacity(0.3))
//        }
    }
}

#Preview {
    PickerBootcamp()
}
