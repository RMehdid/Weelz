//
//  OwnerRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct OwnerRow: View {
    var body: some View {
        HStack {
            Image("profilePlaceholder")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack{
                Text("Tassili Auto")
                    .font(.system(size: 20, weight: .semibold))
                Spacer()
                Text("4 years renting")
                    .font(.system(size: 14, weight: .regular))
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "phone.fill")
            }
            .buttonStyle(WeelzSmallButtonStyle())
        }
        .frame(maxHeight: 48)
    }
}

#Preview {
    OwnerRow()
}
