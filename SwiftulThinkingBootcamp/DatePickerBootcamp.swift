//
//  DatePickerBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 27.10.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
           // DatePicker("Select a Date", selection: $selectedDate)
            
//            DatePicker("Select a Date",
//                       selection: $selectedDate,
//                       displayedComponents: [ .hourAndMinute])
            
            Text("SELECTED DATE IS:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a date",
                       selection: $selectedDate, in: startingDate...endingDate)
                .accentColor(.red)
                .datePickerStyle(.compact)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
