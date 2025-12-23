//
//  HStack+Extensions.swift
//  SUIReseipt
//
//  Created by Konstantin on 22.12.2025.
//

import SwiftUI

extension HStack {
    public init(alignment: VerticalAlignment = .center, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: 0, content: content)
    }
}
