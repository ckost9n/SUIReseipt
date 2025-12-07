//
//  LightTheme.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

struct LightTheme: Theme {
    let colors: Colors = LightThemeColors()
}

struct LightThemeColors: Colors {
    let background: BackgroundColors = LightBackgroundColors()
    let label: LabelColors = LightLabelColors()
}

struct LightBackgroundColors: BackgroundColors {
    let primary: Color = .red
    let secondary: Color = .red.opacity(0.5)
}

struct LightLabelColors: LabelColors {
    let primary: Color = .yellow
    let secondary: Color = .yellow.opacity(0.5)
}
