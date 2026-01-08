//
//  LightTheme.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

public struct LightTheme: Theme {
    public let colors: Colors = LightThemeColors()
    public let fonts: Fonts = FontsImp()
    
    public init() { }
}

public struct LightThemeColors: Colors {
    public let background: BackgroundColors = LightBackgroundColors()
    public let label: LabelColors = LightLabelColors()
    
    public init() { }
}

public struct LightBackgroundColors: BackgroundColors {
    public let primary: Color = .red
    public let secondary: Color = .red.opacity(0.5)
    public var ghost: Color = .gray.opacity(0.6)
    
    public init() { }
}

public struct LightLabelColors: LabelColors {
    public let primary: Color = .yellow
    public let secondary: Color = .yellow.opacity(0.5)
    public var tertiary: Color = .gray.opacity(0.8)
    
    public init() { }
}
