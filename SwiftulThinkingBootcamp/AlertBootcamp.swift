//
//  AlertBootcamp.swift
//  SwiftulThinkingBootcamp
//
//  Created by Oleg Plugaru on 26.10.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "Succesfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert, content: getAlert)
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("There waws an error!"))
        case .error:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case nil:
            return Alert(title: Text("Error"))
        }
//        return Alert(title: Text(alertTitle),
//                    message: Text(alertMessage),
//                     dismissButton: .default(Text("Ok")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertBootcamp()
}
