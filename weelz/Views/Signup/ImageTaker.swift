//
//  ImageTaker.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct ImageTaker: View {
    var body: some View {
        VStack{
            ViewTitle(title: "Take a picture")
                .padding()
                .background(.wzPrimary)
            
            Spacer()
            
            ZStack(alignment: .top){
                
                VStack(alignment: .leading, spacing: 32){
                    
                    Text("Please respect the borders")
                        .font(.system(size: 24, weight: .semibold))
                    
                    Button {
                        //
                    } label: {
                        Text("Upload")
                            .font(.system(size: 32, weight: .medium))
                    }
                    .buttonStyle(WeelzButtonStyle())
                }
                .padding(16)
                .padding(.vertical)
                .background(.wzPrimary)
                .cornerRadius(28, corners: [.topLeft, .topRight])
                
                Button {
                    //
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .renderingMode(.template)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                }
                .foregroundStyle(.primary)
                .shadow(radius: 4, x: 1, y: 4)
                .padding(.top, -26)
            }
        }
    }
}

#Preview {
    ImageTaker()
}
