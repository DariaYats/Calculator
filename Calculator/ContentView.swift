//
//  ContentView.swift
//  Calculator
//
//  Created by Daria Yatsyniuk on 21.10.2025.
//

import SwiftUI

struct ContentView: View {
@State var total = "0"
    var body: some View {
        VStack {
            TotalText(value: total)
            ButtonGrid(total: $total)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
