//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Property

    let category: Category

    // MARK: - body

    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)

                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)

                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

// MARK: - Preview

#Preview {
    CategoryItemView(category: categories[0]).padding()
}
