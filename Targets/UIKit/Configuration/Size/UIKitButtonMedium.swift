//
//  UIKitButtonMedium.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonMedium: UIKitButtonSize {
    let height: CGFloat = 32
}

extension UIKitButtonSize where Self == UIKitButtonMedium {
    static var medium: UIKitButtonSize { UIKitButtonMedium() }
}
