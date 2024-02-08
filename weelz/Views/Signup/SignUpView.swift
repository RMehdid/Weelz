//
//  SignUpView.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 64){
            ViewTitle(title: "Upload Documents")
            
            VStack(spacing: 32){
                
                DocumentRow(
                    title: "Take a picture of your drivers license",
                    iconTitle: "person.text.rectangle.fill"
                ) { result in
                    debugPrint(result)
                }
                
                DocumentRow(
                    title: "Take a picture of your passport",
                    iconTitle: "wallet.pass.fill"
                ) { result in
                    debugPrint(result)
                }
                
            }
            
            Spacer()
        }
        .padding()
        .background(Color.wzPrimary)
    }
}

#Preview {
    SignUpView()
}
