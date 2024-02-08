//
//  ViewTitle.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct ViewTitle: View {
    
    @Environment(\.dismiss) private var dismiss
    
    let title: String
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.backward.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Text(title)
                    .font(.system(size: 24, weight: .semibold))
            }
        }
        .foregroundStyle(.primary)
    }
}

#Preview {
    ViewTitle(title: "Upload documents")
}
