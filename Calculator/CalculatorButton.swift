//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Daria Yatsyniuk on 21.10.2025.
//

import SwiftUI

struct CalculatorButton: View {
    var buttonText = "1"
    var width: CGFloat = 70
    var color = Color(hue: 1.0, saturation: 0, brightness: 0.28)
    var action: (CalculatorButton) -> Void = { _ in }
    var mode: CalculatorMode = .notSet

    var body: some View {
        Button(action: {
            action(self)
        }, label: {
            Text(buttonText)
                .font(.largeTitle)
                .frame(width: width, height: 70, alignment: .center)
                .background(color)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 14))
        })
    }
}

#Preview {
    CalculatorButton()
}
