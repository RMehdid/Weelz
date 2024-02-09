//
//  SignUpView.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 64){
            ViewTitle(title: "Upload Documents")
            
            VStack(spacing: 32){
                
                DocumentRow(
                    title: "Take a picture of your drivers license",
                    iconTitle: "person.text.rectangle.fill",
                    uiState: $viewModel.driversLicenseUiState
                )
                
                DocumentRow(
                    title: "Take a picture of your passport",
                    iconTitle: "wallet.pass.fill",
                    uiState: $viewModel.passportUiState
                )
            }
            
            Spacer()
            
            Button("Continue") {
                viewModel.signup()
            }
            .buttonStyle(WeelzButtonStyle(disabled: viewModel.disabled))
        }
        .padding()
        .background(Color.wzPrimary)
    }
}

#Preview {
    SignUpView()
}
