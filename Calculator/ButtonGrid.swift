//
//  ButtonGrid.swift
//  Calculator
//
//  Created by Daria Yatsyniuk on 21.10.2025.
//

import SwiftUI

struct ButtonGrid: View {
    @Binding var total: String
    var body: some View {
        Grid {
            GridRow {
                CalculatorButton(buttonText: "1", action: numberWasPressed)
                CalculatorButton(buttonText: "2", action: numberWasPressed)
                CalculatorButton(buttonText: "3", action: numberWasPressed)
                CalculatorButton(buttonText: "+", color: .orange, action: modeWasPressed)
            }

            GridRow {
                CalculatorButton(buttonText: "4", action: numberWasPressed)
                CalculatorButton(buttonText: "5", action: numberWasPressed)
                CalculatorButton(buttonText: "6", action: numberWasPressed)
                CalculatorButton(buttonText: "-", color: .orange, action: modeWasPressed)
            }

            GridRow {
                CalculatorButton(buttonText: "7", action: numberWasPressed)
                CalculatorButton(buttonText: "8", action: numberWasPressed)
                CalculatorButton(buttonText: "9", action: numberWasPressed)
                CalculatorButton(buttonText: "x", color: .orange, action: modeWasPressed)
            }

            GridRow {
                CalculatorButton(buttonText: "0", width: 147, action: numberWasPressed)
                    .gridCellColumns(2)
                CalculatorButton(buttonText: "C", color: .gray, action: clearWasPressed(button:))
                CalculatorButton(buttonText: "=", color: .orange)
            }
        }
    }

    func numberWasPressed(button: CalculatorButton) {
        total = button.buttonText
    }

    func modeWasPressed(button: CalculatorButton) {

    }

    func clearWasPressed(button: CalculatorButton) {

    }
}

#Preview {
    ButtonGrid(total: .constant("1"))
}
