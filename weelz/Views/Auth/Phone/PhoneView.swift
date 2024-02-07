//
//  PhoneView.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI

struct PhoneView: View {
    @State private var phone = ""
    @State private var countryCode = ""
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                PhoneNumberTextField(phoneNumber: $phone, countryCode: $countryCode)
                Text("By pressing continue you agree to our [terms and conditions]")
                    .font(.system(size: 10, weight: .regular))
                    .padding(.horizontal, 6)
            }
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
            }
            .buttonStyle(WeelzButtonStyle())
            .padding()
        }
        .background(.wzPrimary)
    }
}

#Preview {
    PhoneView()
}
