//
//  CarRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct CarRow: View {
    var body: some View {
        HStack {
            Image("carPlaceholder")
                .resizable()
                .frame(width: 170, height: 100)
                .cornerRadius(8)
            
            VStack(alignment: .leading){
                Text("Mercedes")
                    .font(.system(size: 24, weight: .bold))
                Text("AMG S63")
                    .font(.system(size: 16, weight: .regular))
                
                Spacer()
                
                Text("Field")
                    .font(.system(size: 16, weight: .regular))
            }
            .padding(.vertical, 6)
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    CarRow()
}
