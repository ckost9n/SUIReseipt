//
//  CustomWeght+Extension.swift
//  SUIReseipt
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

extension Font.Weight {
    var uiWeight: UIFont.Weight? {
        switch self {
        case .thin: .thin
        case .bold: .bold
        case .black: .black
        case .regular: .regular
        case .medium: .medium
        case .heavy: .heavy
        case .light: .light
        case .ultraLight: .ultraLight
        default: nil
        }
    }
}

extension UIFont.Weight {
    var inter: UIFont.Weight {
        switch self {
        case .thin: getUIFont(name: .thin)
        case .bold: getUIFont(name: .bold)
        case .black: getUIFont(name: .black)
        case .regular: getUIFont(name: .regular)
        case .medium: getUIFont(name: .medium)
        case .heavy: getUIFont(name: .heavy)
        case .light: getUIFont(name: .light)
        case .ultraLight: getUIFont(name: .ultraLight)
        default: self
        }
    }

    func getUIFont(name: FontsCollection) -> UIFont.Weight {
        UIFont(name: name.rawValue, size: UIFont.systemFontSize)!.weight
    }
}
