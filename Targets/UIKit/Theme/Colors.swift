//
//  Colors.swift
//  SUIReseipt
//
//  Created by Konstantin on 07.12.2025.
//

import SwiftUI

public protocol Colors {
    var background: BackgroundColors { get }
    var label: LabelColors { get }
}

public protocol BackgroundColors {
    var primary: Color { get }
    var secondary: Color { get }
    var ghost: Color { get }
}

public protocol LabelColors {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}
