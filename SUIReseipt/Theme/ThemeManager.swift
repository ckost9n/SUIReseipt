//
//  ThemeManager.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

final class ThemeManager: ObservableObject {
    @Published var currentThemeType: ThemeType
    @Published var themes: [ThemeType: Theme]

    var currentTheme: Theme {
        themes[currentThemeType] ?? LightTheme()
    }

    static let shared = ThemeManager()

    private init(
        themes: [ThemeType : Theme] = [:],
        currentThemeType: ThemeType = .light
    ) {
        self.themes = themes
        self.currentThemeType = currentThemeType
    }
}
