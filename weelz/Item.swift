//
//  Item.swift
//  weelz
//
//  Created by Samy Mehdid on 6/2/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
