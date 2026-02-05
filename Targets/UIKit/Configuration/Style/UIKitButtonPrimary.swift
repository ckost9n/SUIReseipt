//
//  UIKitButtonPrimary.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

public struct UIKitButtonPrimary: UIkitButtonAppearance {
    public let foregroundColor: Color = .label.primary
    public let backgroundColor: Color = .background.ghost
    public let font: Font = .title3
    public let weight: Font.Weight = .thin

    public init() { }
}

extension UIkitButtonAppearance where Self == UIKitButtonPrimary {
    public static var primary: UIkitButtonAppearance { UIKitButtonPrimary() }
}
