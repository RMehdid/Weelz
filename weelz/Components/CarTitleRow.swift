//
//  CarTitleRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct CarTitleRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Mercedes")
                    .font(.system(size: 24, weight: .bold))
                Text("AMG S63")
                    .font(.system(size: 16, weight: .regular))
            }
            
            Spacer()
            
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24)
            Text("4.5")
                .font(.system(size: 20, weight: .regular))
        }
    }
}

#Preview {
    CarTitleRow()
}
