//
//  CategoryItem.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import SwiftUI

struct CategoryItem: View {
    private let category: Category
    
    init(_ category: Category) {
        self.category = category
    }
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 28, height: 28)
            Text(category.rawValue)
                .font(.system(size: 16, weight: .medium))
        }
    }
}

#Preview {
    CategoryItem(.wedding)
}
