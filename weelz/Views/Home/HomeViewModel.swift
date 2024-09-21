//
//  HomeViewModel.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import Foundation

extension HomeView {
    @MainActor class ViewModel: ObservableObject {
        @Published var carsUiState: UiState<[Car]> = .idle
        
        init() {
            self.getCars()
        }
        
        func getCars(category: Category? = nil) {
            self.carsUiState = .success([.sample])
        }
    }
}
