//
//  CarCard.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct CarCard: View {
    
    @State private var isLiked: Bool = false
    
    var body: some View {
        VStack {
            ZStack{
                Image("carPlaceholder")
                    .resizable()
                    
                LinearGradient(colors: [.wzPrimary, .clear], startPoint: .bottom, endPoint: .top)
                    .opacity(0.3)
            }
            .frame(height: 205)
            .cornerRadius(12)
            .overlay(alignment: .bottom) {
                HStack{
                    ForEach(0..<4) { _ in
                        Circle()
                            .frame(width: 6, height: 6)
                    }
                }
                .padding(6)
            }
            .overlay(alignment: .topTrailing) {
                Button {
                    self.isLiked.toggle()
                } label: {
                    Image(systemName: "heart" + (isLiked ? ".fill" : ""))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .padding(8)
                        .foregroundStyle(.wzPrimary)
                }
            }
            
            CarTitleRow()
        }
    }
}

#Preview {
    CarCard()
        .padding()
}
