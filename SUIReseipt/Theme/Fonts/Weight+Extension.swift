//
//  Weight+Extension.swift
//  SUIReseipt
//
//  Created by Konstantin on 23.12.2025.
//

import UIKit

// MARK: - With weight

extension UIFont {
    func withWeight(_ weight: UIFont.Weight) -> UIFont {
        var attributes = fontDescriptor.fontAttributes
        
        var traits = (attributes[.traits]) as? [UIFontDescriptor.TraitKey: Any] ?? [:]
        
        traits[.weight] = weight
        
        attributes[.traits] = traits
        attributes[.name] = nil
        attributes[.family] = familyName
        
        let descriptor = UIFontDescriptor(fontAttributes: attributes)
        
        return UIFont(descriptor: descriptor, size: pointSize)
    }
}

// MARK: - Weight

extension UIFont {
    var weight: Weight {
        traits[.weight] as! Weight
    }
    
    var traits: [UIFontDescriptor.TraitKey: Any] {
        fontDescriptor.object(forKey: .traits) as? [UIFontDescriptor.TraitKey: Any] ?? [:]
    }
}
