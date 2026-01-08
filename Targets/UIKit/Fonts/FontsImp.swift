//
//  FontsImp.swift
//  SUIReseipt
//
//  Created by Konstantin on 22.12.2025.
//

import SwiftUI

public struct FontsImp: Fonts {
    public var head: Font = interFont(size: 54)
    public var headMedium: Font = interFont(size: 32)
    
    public var body: Font = interFont(size: 24)
    public var bodyMedium: Font = interFont(size: 18)
    
    public var caption: Font = interFont(size: 16, weight: .thin)
    public var captionMedium: Font = interFont(size: 14).italic()
    
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
