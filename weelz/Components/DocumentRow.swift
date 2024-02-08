//
//  DocumentRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct DocumentRow: View {
    private let title: String
    private let iconTitle: String
    
    private let uploadSuccess: (String) -> Void
    
    init(title: String, iconTitle: String, uploadSuccess: @escaping (String) -> Void) {
        self.title = title
        self.iconTitle = iconTitle
        self.uploadSuccess = uploadSuccess
    }
    
    var body: some View {
        
        NavigationLink {
            ImageTaker()
        } label: {
            HStack {
                Image(systemName: iconTitle)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
                    .frame(width: 65, height: 65)
                    .background(Color.wzPrimary)
                    .clipShape(Circle())
                
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
        .padding()
        .background(Color.wzSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .foregroundStyle(.primary)
    }
}

#Preview {
    DocumentRow(title: "Take a picture of your drivers license", iconTitle: "person.text.rectangle.fill") { result in
        debugPrint(result)
    }
}
