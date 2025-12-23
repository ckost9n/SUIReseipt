//
//  DarkTheme.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

struct DarkTheme: Theme {
    let colors: Colors = DarkThemeColors()
    let fonts: Fonts = FontsImp()
}

struct DarkThemeColors: Colors {
    let background: BackgroundColors = DarkBackgroundColors()
    let label: LabelColors = DarkLabelColors()
}

struct DarkBackgroundColors: BackgroundColors {
    let primary: Color = .blue
    let secondary: Color = .blue.opacity(0.5)
    var ghost: Color = .gray.opacity(0.6)
}

struct DarkLabelColors: LabelColors {
    let primary: Color = .green
    let secondary: Color = .green.opacity(0.5)
    var tertiary: Color = .gray.opacity(0.8)
}
