//
//  HomeUI.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import DSKit
import SwiftUI

struct HomeUI: View {
    @EnvironmentObject private var themeManager: ThemeManager

    var body: some View {
        NavigationView {
            ZStack {
                Color.background.primary.ignoresSafeArea()
                Button("Just change current theme") {
                    themeManager.currentThemeType = [.light, .dark].randomElement() ?? .dark
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 14) {
                        toolbarImage("location.viewfinder")
                        toolbarTitle("Mohammed, Dhaka")
                        toolbarImage("chevron.down")
                        
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Circle().frame(width: 42, height: 42)
                }
            }
        }
    }
}

// MARK: - Toolbar image
private extension HomeUI {
    func toolbarImage(_ systemName: String) -> some View {
        Image(systemName: systemName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 21, height: 21)
            .foregroundColor(.secondary)
            .padding(.vertical, 2)
    }
}

// MARK: Toolbar title
private extension HomeUI {
    func toolbarTitle(_ title: String) -> some View {
        Text(title)
            .font(.captionMedium.customWeight(.ultraLight))
            .foregroundStyle(.primary)
    }
}

struct HomeUI_Previews: PreviewProvider {
    static var previews: some View {
        HomeUI().environmentObject(ThemeManager.shared)
    }
}
