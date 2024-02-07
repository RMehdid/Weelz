//
//  WeelzButtonStyle.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI

struct WeelzButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            Spacer()
            configuration.label
            Spacer()
        }
        .padding()
        .background(.wzRed)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
