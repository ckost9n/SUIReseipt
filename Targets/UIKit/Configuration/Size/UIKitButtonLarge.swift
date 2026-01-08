//
//  UIKitButtonLarge.swift
//  DSKit
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

struct UIKitButtonLarge: UIKitButtonSize {
    let height: CGFloat = 46
}

extension UIKitButtonSize where Self == UIKitButtonLarge {
    static var large: UIKitButtonSize { UIKitButtonLarge() }
}

//enum UIKitButtonStandartSize: UIKitButtonSize {
//    case large, medium, small
//    
//    var height: CGFloat {
//        switch self {
//        case .large: return 46
//        case .medium: return 36
//        case .small: return 30
//        }
//    }
//}

