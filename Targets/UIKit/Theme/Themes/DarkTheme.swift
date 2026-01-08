//
//  DarkTheme.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

public struct DarkTheme: Theme {
    public let colors: Colors = DarkThemeColors()
    public let fonts: Fonts = FontsImp()

    public init() { }
}

public struct DarkThemeColors: Colors {
    public let background: BackgroundColors = DarkBackgroundColors()
    public let label: LabelColors = DarkLabelColors()
    
    public init() { }
}

public struct DarkBackgroundColors: BackgroundColors {
    public let primary: Color = .blue
    public let secondary: Color = .blue.opacity(0.5)
    public var ghost: Color = .gray.opacity(0.6)
    
    public init() { }
}

public struct DarkLabelColors: LabelColors {
    public let primary: Color = .green
    public let secondary: Color = .green.opacity(0.5)
    public var tertiary: Color = .gray.opacity(0.8)
    
    public init() { }
}
