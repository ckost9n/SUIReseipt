//
//  UIKitButtonSmall.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

public struct UIKitButtonSmall: UIKitButtonSize {
    public let height: CGFloat = 24
    
    public init() { }
}

extension UIKitButtonSize where Self == UIKitButtonSmall {
    public static var small: UIKitButtonSize { UIKitButtonSmall() }
}
