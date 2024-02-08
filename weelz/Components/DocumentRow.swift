//
//  DocumentRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct DocumentRow: View {
    let title: String
    let iconTitle: String
    
    var body: some View {
        HStack {
            Image(systemName: iconTitle)
                .resizable()
                .scaledToFit()
                .frame(height: 24)
                .frame(width: 65, height: 65)
                .background(Color.wzPrimary)
                .clipShape(Circle())
            
            Text(title)
                .font(.system(size: 16, weight: .regular))
        }
        .padding()
        .background(Color.wzSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    DocumentRow(title: "Take a picture of your drivers license", iconTitle: "person.text.rectangle.fill")
}
