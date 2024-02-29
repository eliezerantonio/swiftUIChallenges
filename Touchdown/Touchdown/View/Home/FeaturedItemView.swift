//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 22/02/24.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Property

    let player: Player

    // MARK: - BODY

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
