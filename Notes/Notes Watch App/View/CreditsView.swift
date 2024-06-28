//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Eliezer Antonio on 28/06/24.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - Property

    @State private var randomNUmber: Int = Int.random(in: 1 ..< 4)

    private var randomImage: String {
        return "developer-no\(randomNUmber)"
    }

    // MARK: - Body

    var body: some View {
        VStack(spacing: 3) {
            // Profile image

            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // Header

            HeaderView(title: "Credits")

            // Content

            Text("Eliezer Antonio")
                .foregroundStyle(.primary)

            Text("Developer")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.light)
        } //: VStack
    }
}

#Preview {
    CreditsView()
}
