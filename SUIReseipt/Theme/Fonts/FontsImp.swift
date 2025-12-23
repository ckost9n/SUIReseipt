//
//  FontsImp.swift
//  SUIReseipt
//
//  Created by Konstantin on 22.12.2025.
//

import SwiftUI

struct FontsImp: Fonts {
    var head: Font = interFont(size: 54)
    var headMedium: Font = interFont(size: 32)
    
    var body: Font = interFont(size: 24)
    var bodyMedium: Font = interFont(size: 18)
    
    var caption: Font = interFont(size: 16, weight: .thin)
    var captionMedium: Font = interFont(size: 14).italic()
    
    static func interFont(size: CGFloat, weight: Font.Weight = .regular) -> Font {
        switch weight {
        case .black: .custom(FontsCollection.black.rawValue, size: size)
        case .bold: .custom(FontsCollection.bold.rawValue, size: size)
        case .heavy: .custom(FontsCollection.heavy.rawValue, size: size)
        case .light: .custom(FontsCollection.light.rawValue, size: size)
        case .medium: .custom(FontsCollection.medium.rawValue, size: size)
        case .regular: .custom(FontsCollection.regular.rawValue, size: size)
        case .semibold: .custom(FontsCollection.semibold.rawValue, size: size)
        case .thin: .custom(FontsCollection.thin.rawValue, size: size)
        case .ultraLight: .custom(FontsCollection.ultraLight.rawValue, size: size)
        default: .custom(FontsCollection.black.rawValue, size: size)
        }
    }
}
