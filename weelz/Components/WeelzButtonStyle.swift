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
                .font(.system(size: 24, weight: .medium))
            Spacer()
        }
        .frame(height: 68)
        .background(.wzRed)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct WeelzSmallButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 38, height: 38)
            .background(.wzSecondary)
            .foregroundStyle(.primary)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .frame(width: 62, height: 62)
    }
}
