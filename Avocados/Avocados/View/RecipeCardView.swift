//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Eliezer Antonio on 04/07/24.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Properties

    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)

    @State private var shoModal: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small
                                )
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        } //: VStack
                    } //: HStack
                )
            VStack(alignment: .leading, spacing: 12) {
                // TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)

                // Hedline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(Color.gray)
                    .italic()

                // RATING

                RecipeRatingView(recipe: recipe)

                // Rates

                RecipeCookingView(recipe: recipe)
                // Cooking
            } //: vStack
            .padding()
            .padding(.bottom, 12)
        } //: VStack
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.shoModal = true
        }
        .sheet(isPresented: $shoModal) {
            RecipeDetailView(recipe: self.recipe)
        }
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
