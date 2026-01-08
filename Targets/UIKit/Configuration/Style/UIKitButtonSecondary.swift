//
//  UIKitButtonSecondary.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonSecondary: UIkitButtonAppearance {
    let foregroundColor: Color = Color(uiColor: .secondaryLabel)
    let backgroundColor: Color = .green
    let font: Font = .title2
    let weight: Font.Weight = .regular
}

extension UIkitButtonAppearance where Self == UIKitButtonSecondary {
    static var secondary: UIkitButtonAppearance { UIKitButtonSecondary() }
}
