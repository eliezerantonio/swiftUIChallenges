//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Property

    // MARK: - Body

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } //: Loop
            }) //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)

        }) //: Scroll
    }
}

#Preview {
    CategoryGridView()
        .padding()
}
