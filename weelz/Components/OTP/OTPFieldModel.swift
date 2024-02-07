//
//  OTPFieldModel.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import Foundation

//
//  OtpScreenModel.swift
//  SwiftUiApp
//
//  Created by Ayoub on 28/11/2022.
//

import SwiftUI

extension OtpField {
    class Model: ObservableObject {
        
        @Published var otpFields: [String] = Array(repeating: "", count: 6)
        
        func updateActiveField(value: [String], codeLength: Int, activeField: OTPField?, nextActiveField: @escaping (OTPField?) -> Void) {
            for index in 1 ... (codeLength - 1){
                if value[index].isEmpty && !value[index - 1].isEmpty {
                    nextActiveField(activeStateForIndex(index: index - 1))
                }
            }
            
            for index in 0 ..< (codeLength - 1){
                if value[index].count == 1 && activeStateForIndex(index: index) == activeField {
                    nextActiveField(activeStateForIndex(index: index + 1))
                }
            }
            for index in 0 ..< codeLength {
                if value[index].count > 1 {
                    otpFields[index] = String(value[index].last!)
                }
            }
        }
        
        func activeStateForIndex(index: Int) -> OTPField {
            switch index {
            case 0: return .field1
            case 1: return .field2
            case 2: return .field3
            case 3: return .field4
            case 4: return .field5
            default: return .field6
            }
        }
        
        func handleAutoFill(value: [String], codeLength: Int) -> Bool {
            for item in value {
                if item.count == codeLength {
                    for i in 0...(codeLength - 1) {
                        otpFields[i] = String(Array(item)[i])
                    }
                    return true
                }
            }
            if otpFields.joined().count == codeLength { return true }
            return false
        }
    }
}
