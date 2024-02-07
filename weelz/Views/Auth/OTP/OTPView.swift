//
//  OTPView.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI

struct OTPView: View {
    
    var body: some View {
        VStack {
            OtpField()
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
    OTPView()
}
