//
//  UiState.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import Foundation

enum UiState<Model> {
    case idle
    case empty
    case loading(Int?)
    case success(Model)
    case failure(any Error)
}
