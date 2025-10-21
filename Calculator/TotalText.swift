//
//  TotalText.swift
//  Calculator
//
//  Created by Daria Yatsyniuk on 21.10.2025.
//

import SwiftUI

struct TotalText: View {
    var value = "0"
    var body: some View {
        Text(value)
            .frame(width: 320, alignment: .bottomTrailing)
            .fontWeight(.light)
            .font(.system(size: 80))
            .padding()
            .lineLimit(1)
    }
}

#Preview {
    TotalText()
}
