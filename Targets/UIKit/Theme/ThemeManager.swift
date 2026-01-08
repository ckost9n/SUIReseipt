//
//  ThemeManager.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

public final class ThemeManager: ObservableObject {
    @Published public var currentThemeType: ThemeType
    @Published public var themes: [ThemeType: Theme]

    public var currentTheme: Theme {
        themes[currentThemeType] ?? LightTheme()
    }

    public static let shared = ThemeManager()

    private init(
        themes: [ThemeType : Theme] = [:],
        currentThemeType: ThemeType = .light
    ) {
        self.themes = themes
        self.currentThemeType = currentThemeType
    }
}
