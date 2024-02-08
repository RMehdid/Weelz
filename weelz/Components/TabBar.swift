//
//  TabBar.swift
//  weelz
//
//  Created by Samy Mehdid on 8/2/2024.
//

import SwiftUI

struct TabBar: View {
    
    private enum TabItem: String, CaseIterable {
        case explore
        case favorites
        case reservations
        case profile
    }
    
    @State private var selectedTab: TabItem = .explore
    
    var body: some View {
        HStack{
            ForEach(TabItem.allCases, id: \.hashValue) { item in
                Spacer()
                buttonBuilder(for: item, enabled: selectedTab == item)
                Spacer()
            }
        }
        .frame(height: 76)
        .background(.wzPrimary)
    }
    
    @ViewBuilder
    private func buttonBuilder(for tabItem: TabItem, enabled: Bool) -> some View {
        Button {
            withAnimation(Animation.easeIn(duration: 0.2)) {
                self.selectedTab = tabItem
            }
        } label: {
            HStack(spacing: 8){
                Image(tabItem.rawValue)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 24, height: 24)
                
                if enabled {
                    Text(tabItem.rawValue)
                        .font(.system(size: 12, weight: .medium))
                }
            }
            .foregroundStyle(enabled ? .wzPrimary : Color.wzReversed)
            .padding(8)
            .padding(.horizontal, 6)
            .background {
                if enabled {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundStyle(.wzReversed)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    TabBar()
}
