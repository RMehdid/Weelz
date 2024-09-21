//
//  HomeView.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = ViewModel()
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
            switch vm.carsUiState {
            case .idle, .empty, .loading, .failure:
                EmptyView()
            case .success(let cars):
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(cars) { car in
                            CarCard(car: car, isLiked: false)
                        }
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
