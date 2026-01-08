//
//  UIKitButtonPrimary.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonPrimary: UIkitButtonAppearance {
    let foregroundColor: Color = .white
    let backgroundColor: Color = .yellow
    let font: Font = .title3
    let weight: Font.Weight = .thin
}

extension UIkitButtonAppearance where Self == UIKitButtonPrimary {
    static var primary: UIkitButtonAppearance { UIKitButtonPrimary() }
}
