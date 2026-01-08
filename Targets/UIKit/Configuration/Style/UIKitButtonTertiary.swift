//
//  UIKitButtonTerterary.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonTertiary: UIkitButtonAppearance {
    let foregroundColor: Color = Color(uiColor: .tertiaryLabel)
    let backgroundColor: Color = Color(uiColor: .tertiarySystemBackground)
    let font: Font = .title
    let weight: Font.Weight = .semibold
}

extension UIkitButtonAppearance where Self == UIKitButtonTertiary {
    static var tertiary: UIkitButtonAppearance { UIKitButtonTertiary() }
}
