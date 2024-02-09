//
//  DocumentRow.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct DocumentRow: View {
    private let title: String
    private let iconTitle: String
    
    @StateObject var viewModel = ViewModel()
    
    @Binding var uiState: UiState<String>
    
    init(title: String, iconTitle: String, uiState: Binding<UiState<String>>) {
        self.title = title
        self.iconTitle = iconTitle
        self._uiState = uiState
    }
    
    var body: some View {
        
        NavigationLink {
            ImageTakerView(self.$uiState)
        } label: {
            HStack {
                Image(systemName: iconTitle)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 24)
                    .frame(width: 65, height: 65)
                    .background(Color.wzPrimary)
                    .clipShape(Circle())
                
                Text(title)
                    .font(.system(size: 16, weight: .medium))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
        .padding()
        .background(Color.wzSecondary)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .foregroundStyle(.primary)
    }
}

#Preview {
    DocumentRow(
        title: "Take a picture of your drivers license",
        iconTitle: "person.text.rectangle.fill",
        uiState: .constant(.idle)
    )
}

extension DocumentRow {
    @MainActor class ViewModel: ObservableObject {
        
    }
}
