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
