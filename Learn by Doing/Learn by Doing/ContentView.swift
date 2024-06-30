//
//  ContentView.swift
//  Learn By Doing
//
//  Created by Eliezer Antonio on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - CONTENT

    var cards: [Card] = cardData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    ContentView()
}
