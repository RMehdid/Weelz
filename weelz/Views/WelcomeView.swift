//
//  WelcomeView.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack(alignment: .top){
            ZStack {
                Image("welcomePicture")
                    .resizable()
                LinearGradient(colors: [.black, .clear], startPoint: .bottom, endPoint: .center)
                LinearGradient(colors: [.black, .clear], startPoint: .top, endPoint: .center)
                    .opacity(0.6)
            }
            .ignoresSafeArea()
            
            VStack(alignment: .leading){
                Spacer()
                    .frame(height: 60)
                
                Text("Weelz Everywhere")
                    .font(.system(size: 40, weight: .bold))
                
                Text("Weelz anytime")
                    .font(.system(size: 36, weight: .regular))
                
                Spacer()
                
                Button("Get Started") {
                    
                }
                .buttonStyle(WeelzButtonStyle())
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    WelcomeView()
}
