//
//  OTPField.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI

enum OTPField {
    case field1
    case field2
    case field3
    case field4
    case field5
    case field6
}

public struct OtpField: View {
    @StateObject private var model = Model()
    
    @FocusState var activeField: OTPField?

    var otp: String {
        return model.otpFields.joined()
    }
    
    private let codeLength: Int = 6
    
    public var body: some View {
            VStack(alignment: .leading){
                HStack {
                    Spacer()
                    OTPField()
                        .onChange(of: model.otpFields) { newValue in
                            if model.handleAutoFill(value: newValue, codeLength: codeLength) {
                                activeField = nil
                            } else {
                                model.updateActiveField(value: newValue, codeLength: codeLength, activeField: activeField) { newActiveField in
                                    activeField = newActiveField
                                }
                                if newValue.joined().count == codeLength {
                                    for item in newValue {
                                        if item.count == 0 { return }
                                    }
                                    activeField = nil
                                }
                            }
                        }
                    Spacer()
                }
                .padding(.top, 8)
            }
            .ignoresSafeArea(.keyboard)
            .padding(.horizontal, 16)
            .onAppear {
                activeField = .field1
            }
    }
    
    @ViewBuilder
    func OTPField() -> some View {
        HStack(spacing: 10){
            ForEach(0 ..< codeLength, id:\.self){ index in
                ZStack{
                    TextField("", text: $model.otpFields[index])
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .multilineTextAlignment(.center)
                        .focused($activeField, equals: model.activeStateForIndex(index: index))
                }
                .frame(width: 45, height: 55)
                .background(.regularMaterial)
                .cornerRadius(10)
            }
        }
    }
}

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
