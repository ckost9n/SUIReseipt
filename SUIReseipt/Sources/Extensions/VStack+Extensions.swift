//
//  VStack+Extensions.swift
//  SUIReseipt
//
//  Created by Konstantin on 21.12.2025.
//

import SwiftUI

extension VStack {
    public init(alignment: HorizontalAlignment = .center, @ViewBuilder content: () -> Content) {
        self.init(alignment: alignment, spacing: 0, content: content)
    }
}
