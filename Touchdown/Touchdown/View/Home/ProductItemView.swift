//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Property

    let product: Product

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue
            ))
            .cornerRadius(12)
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)

            // Price

            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)

        })
    }
}

#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
