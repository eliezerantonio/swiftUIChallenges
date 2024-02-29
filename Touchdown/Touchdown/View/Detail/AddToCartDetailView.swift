//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 25/02/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - Property

    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        )
        .padding(15)
        .background(Color(red: shop.selectProduct?.red ?? sampleProduct.red, green: shop.selectProduct?.green ?? sampleProduct.green, blue: shop.selectProduct?.blue ?? sampleProduct.blue))
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
