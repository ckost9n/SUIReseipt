//
//  UIKitButton.swift
//  ReseiptSource
//
//  Created by Konstantin on 23.12.2025.
//

import SwiftUI

// MARK: - UIKitButtonSize

public protocol UIKitButtonSize {
    var height: CGFloat { get }
}

// MARK: - UIkitButtonAppearance

public protocol  UIkitButtonAppearance {
    var foregroundColor: Color { get }
    var backgroundColor: Color { get }
    var font: Font { get }
    var weight: Font.Weight { get }
}

// MARK: - UIKitButtonStyle

protocol UIKitButtonStyle {
    var `default`: UIkitButtonAppearance { get }
    var enabled: UIkitButtonAppearance { get }
    var pressed: UIkitButtonAppearance { get }
    var disabled: UIkitButtonAppearance { get }
}

// MARK: - UIKitButton

public struct UIKitButton: View {
    private let title: String
//    private let style: UIKitButtonStyle
    private let appearance: UIkitButtonAppearance
    private let size: UIKitButtonSize
    private let action: () -> Void
    
    // MARK: Init
    public init(
        title: String,
//        style: UIKitButtonStyle,
        appearance: UIkitButtonAppearance,
        size: UIKitButtonSize,
        action: @escaping () -> Void
    ) {
        self.title = title
//        self.style = style
        self.appearance = appearance
        self.size = size
        self.action = action
    }
    
    // MARK: Button View
    public var body: some View {
        Button(action: action, label: { text } )
            .frame(height: size.height)
            .foregroundColor(appearance.foregroundColor)
            .background(appearance.backgroundColor)
            .cornerRadius(6)
    }
}

// MARK: - Text

private extension UIKitButton {
    var text: some View {
        Text(title)
            .font(appearance.font.customWeight(appearance.weight))
            .foregroundColor(appearance.foregroundColor)
    }
}
