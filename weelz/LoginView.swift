//
//  LoginView.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var phone = ""
    @State private var countryCode = ""
    
    var body: some View {
        VStack{
            PhoneNumberTextField(phoneNumber: $phone, countryCode: $countryCode)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
            }
            .buttonStyle(WeelzButtonStyle())
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
