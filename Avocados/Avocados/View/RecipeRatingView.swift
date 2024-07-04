//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Eliezer Antonio on 04/07/24.
//

import SwiftUI

struct RecipeRatingView: View {
    var recipe: Recipe

    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... (recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
