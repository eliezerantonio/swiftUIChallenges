//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Property

    @EnvironmentObject var shop: Shop

    @State private var isAnimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)

                Text(shop.selectProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)

            }) //: VSTACKs
            .offset(y: isAnimating ? -50 : -75)
            Spacer()

            // Photo

            Image(shop.selectProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? -0 : -35)

        }) //: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
