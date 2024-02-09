//
//  Category.swift
//  weelz
//
//  Created by Samy Mehdid on 9/2/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    case quick = "Quick"
    case budget = "Budget"
    case luxury = "Luxury"
    case suv = "SUV"
    case wedding = "Wedding"
    case vintage = "Vintage"
    case nearby = "Nearby"
    
    var id: UUID { UUID() }
}
