//
//  HomeView.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 16){
            HStack {
                searchBar()
                Image(systemName: "slider.horizontal.3")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(Category.allCases) {
                        CategoryItem($0)
                    }
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    @ViewBuilder
    private func searchBar() -> some View {
        RoundedRectangle(cornerRadius: .infinity)
            .frame(height: 40)
    }
}

#Preview {
    HomeView()
}
