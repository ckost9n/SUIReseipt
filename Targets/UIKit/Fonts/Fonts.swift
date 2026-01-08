//
//  Fonts.swift
//  SUIReseipt
//
//  Created by Konstantin on 22.12.2025.
//

import SwiftUI

public protocol Fonts {
    var head: Font { get }
    var headMedium: Font { get }
    
    var body: Font { get }
    var bodyMedium: Font { get }
    
    var caption: Font { get }
    var captionMedium: Font { get }
}

public extension Font {
    static var head: Font { ThemeManager.shared.currentTheme.fonts.head }
    static var headMedium: Font { ThemeManager.shared.currentTheme.fonts.headMedium }
    
    static var body: Font { ThemeManager.shared.currentTheme.fonts.body }
    static var bodyMedium: Font { ThemeManager.shared.currentTheme.fonts.bodyMedium }
    
    static var caption: Font { ThemeManager.shared.currentTheme.fonts.caption }
    static var captionMedium: Font { ThemeManager.shared.currentTheme.fonts.captionMedium }
}
