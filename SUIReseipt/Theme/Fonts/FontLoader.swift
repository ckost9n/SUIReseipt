//
//  FontLoader.swift
//  SUIReseipt
//
//  Created by Konstantin on 22.12.2025.
//

import Foundation
import UIKit

class FontLoader {
    static func loadFonts() {
        let fonts = (Bundle(for: self).urls(forResourcesWithExtension: "otf", subdirectory: nil) ?? [])

        fonts.forEach { url in
            if !CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil) {
                assertionFailure("Falled to register font")
            }
        }
    }
}
