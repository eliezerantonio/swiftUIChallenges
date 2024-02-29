//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Property

    @EnvironmentObject var shop: Shop

    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            Spacer()

            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        }
    }
}

#Preview {
    NavigationBarDetailView().environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
