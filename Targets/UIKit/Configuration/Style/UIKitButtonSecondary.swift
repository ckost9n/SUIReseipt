//
//  UIKitButtonSecondary.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

public struct UIKitButtonSecondary: UIkitButtonAppearance {
    public let foregroundColor: Color = Color(uiColor: .white)
    public let backgroundColor: Color = .green
    public let font: Font = .title2
    public let weight: Font.Weight = .regular
    
    public init() { }
}

extension UIkitButtonAppearance where Self == UIKitButtonSecondary {
    public static var secondary: UIkitButtonAppearance { UIKitButtonSecondary() }
}
