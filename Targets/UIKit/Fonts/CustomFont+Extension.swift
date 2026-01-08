//
//  CustomFont+Extension.swift
//  SUIReseipt
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

public extension Font {
    var uiFont: UIFont? {
        guard let fontProvider = fontProvider(in: self) else {
            return nil
        }
        
        let mirrow = Mirror(reflecting: fontProvider)
        
        if let name = mirrow.descendant("name") as? String,
           let size = mirrow.descendant("size") as? CGFloat {
            return UIFont(name: name, size: size)
        }
        
        return nil
    }
    
    func fontProvider(in object: Any) -> Any? {
        let mirrow = Mirror(reflecting: object)
        
        if let provider = mirrow.descendant("provider") ?? mirrow.descendant("base") {
            return fontProvider(in: provider)
        }

        return object
    }
    
    func customWeight(_ weight: Weight) -> Font {
        guard let uiFont = uiFont,
              let weight = weight.uiWeight,
              uiFont.fontDescriptor.postscriptName.starts(with: "Inter")
        else {
            return self.weight(weight)
        }
        
        return Font(uiFont.withWeight(weight.inter))
    }
}
