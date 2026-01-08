//
//  UIKitButtonSmall.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonSmall: UIKitButtonSize {
    let height: CGFloat = 24
}

extension UIKitButtonSize where Self == UIKitButtonSmall {
    static var small: UIKitButtonSize { UIKitButtonSmall() }
}
