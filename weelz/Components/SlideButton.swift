//
//  SlideButton.swift
//  weelz
//
//  Created by Samy Mehdid on 7/2/2024.
//

import SwiftUI
import SwipableButton

struct SlideButton: View {
    
    let label: String
    let action: () async -> Void
    
    init(label: String, action: @escaping () async -> Void) {
        self.label = label
        self.action = action
    }
    var body: some View {
        SwipableButton(label, style: .init(indicatorBackgroundColor: .white, indicatorColor: .wZred, backgroundColor: .wzRed, textColor: .white, indicatorSystemName: "arrow.right"), action: action)
    }
}

#Preview {
    SlideButton(label: "Label here") {
        //
    }
}
