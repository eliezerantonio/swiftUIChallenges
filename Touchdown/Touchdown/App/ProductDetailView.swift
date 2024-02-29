//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Property

    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NaVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER

            HeaderDetailView()
                .padding(.horizontal)

            // DETAILS TOP PART
            TopPartDetailView().padding(.horizontal)
                .zIndex(1)

            // DETAIL BOTTOM PART

            VStack(alignment: .center, spacing: 0, content: {
                // RATINS + SIZES
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 20)

                // DESCRIPTION

                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                })

                // Qualtity + Fvourite

                QuantityFavouriteDeatilView()
                    .padding(.vertical, 10)

                // ADD TO CART

                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }) //: VStack
            .padding(.horizontal, 4)

            .background(Color.white.clipShape(CustomShape())
                .padding(.top, -105))
        }) //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: shop.selectProduct?.red ?? sampleProduct.red, green: shop.selectProduct?.green ?? sampleProduct.green, blue: shop.selectProduct?.blue ?? sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())

        .previewLayout(.fixed(width: 375, height: 812))
}
