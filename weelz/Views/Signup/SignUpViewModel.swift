//
//  SignUpViewModel.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import Foundation

extension SignUpView {
    @MainActor class ViewModel: ObservableObject {
        
        @Published var driversLicenseUiState: UiState<String> = .idle
        @Published var passportUiState: UiState<String> = .idle
        
        func signup() {
            guard !disabled else {
                return
            }

            // perform api call signup
        }
        
        var disabled: Bool {
            if case .success = driversLicenseUiState, case .success = passportUiState {
                return false
            } else {
                return true
            }
        }
    }
}
