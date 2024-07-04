//
//  ContentView.swift
//  Avocados
//
//  Created by Eliezer Antonio on 01/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Header

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headersData) { item in
                            HeaderView(header: item)
                        }
                    } //: HStack
                } //: Scroll

                // MARK: - Dishes

                Text("Avocates Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                DishesView()
                    .frame(maxWidth: 640)

                // MARK: - AVOCados Facts

                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(factsData) { item in

                            FactsView(fact: item)
                        }
                    }
                }

                // MARK: - Recipe Cards

                Text("AVOCADO RECIPES")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())

                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipesData) { item in
                        RecipeCardView(recipe: item)
                    }
                }.frame(maxWidth: 640)
                    .padding(.horizontal)
                //: VStack

                // MARK: - Footer

                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())

                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                } // VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } // Vstack
        } //: Scrool
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(.title, design: .serif))
            .foregroundStyle(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView()
}
