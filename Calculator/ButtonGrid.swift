//
//  ButtonGrid.swift
//  Calculator
//
//  Created by Daria Yatsyniuk on 21.10.2025.
//

import SwiftUI

enum CalculatorMode {
    case notSet
    case addition
    case subtraction
    case multiplication
}

struct ButtonGrid: View {
    @Binding var total: String
    @State var currentMode: CalculatorMode = .notSet
    @State var lastButtonWasMode = false
    @State var savedInt = 0
    @State var currentInt = 0

    var body: some View {
        Grid {
            GridRow {
                CalculatorButton(buttonText: "1", action: numberWasPressed)
                CalculatorButton(buttonText: "2", action: numberWasPressed)
                CalculatorButton(buttonText: "3", action: numberWasPressed)
                CalculatorButton(buttonText: "+", color: .orange, action: modeWasPressed, mode: .addition)
            }

            GridRow {
                CalculatorButton(buttonText: "4", action: numberWasPressed)
                CalculatorButton(buttonText: "5", action: numberWasPressed)
                CalculatorButton(buttonText: "6", action: numberWasPressed)
                CalculatorButton(buttonText: "-", color: .orange, action: modeWasPressed, mode: .subtraction)
            }

            GridRow {
                CalculatorButton(buttonText: "7", action: numberWasPressed)
                CalculatorButton(buttonText: "8", action: numberWasPressed)
                CalculatorButton(buttonText: "9", action: numberWasPressed)
                CalculatorButton(buttonText: "x", color: .orange, action: modeWasPressed, mode: .multiplication)
            }

            GridRow {
                CalculatorButton(buttonText: "0", width: 147, action: numberWasPressed)
                    .gridCellColumns(2)
                CalculatorButton(buttonText: "C", color: .gray, action: clearWasPressed(button:))
                CalculatorButton(buttonText: "=", color: .orange, action: equalWasPressed)
            }
        }
    }

    func numberWasPressed(button: CalculatorButton) {
        if lastButtonWasMode {
            lastButtonWasMode = false
            currentInt = 0
        }

        if let totalInt = Int("\(currentInt)" + button.buttonText) {
            currentInt = totalInt
            updateText()
        } else {
            total = "Error"
            currentInt = 0
        }
    }

    func modeWasPressed(button: CalculatorButton) {
        lastButtonWasMode = true
        currentMode = button.mode

    }

    func clearWasPressed(button: CalculatorButton) {
        lastButtonWasMode = true
    }

    func equalWasPressed(button: CalculatorButton) {
        if currentMode == .notSet ||  lastButtonWasMode {
            return
        }

    }

    func updateText() {
        if currentMode == .notSet {
            savedInt = currentInt
        }
        total = "\(currentInt)"
    }
}

#Preview {
    ButtonGrid(total: .constant("1"))
}
