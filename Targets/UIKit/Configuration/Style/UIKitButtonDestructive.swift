//
//  UIKitButtonDestructive.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonDestructive: UIkitButtonAppearance {
    let foregroundColor: Color = .white
    let backgroundColor: Color = .red
    let font: Font = .body
    let weight: Font.Weight = .bold
}

extension UIkitButtonAppearance where Self == UIKitButtonDestructive {
    static var destructive: UIkitButtonAppearance { UIKitButtonDestructive() }
}
