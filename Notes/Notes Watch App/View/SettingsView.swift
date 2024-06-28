//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Eliezer Antonio on 28/06/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Porpoerty

    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0

    // MARK: - Function

    func update() {
        lineCount = Int(value)
    }

    var body: some View {
        VStack(spacing: 8) {
            // Header
            HeaderView(title: "Settings")

            // Actual line count

            Text("Lines \(lineCount)".uppercased())
                .fontWeight(.bold)

            // Slider

            Slider(value: Binding(get: { self.value }, set: { newValue in self.value = newValue
                self.update()
            }), in: 1 ... 4, step: 1)
                .accentColor(.accentColor)
        } //: VStack
    }
}

#Preview {
    SettingsView()
}
