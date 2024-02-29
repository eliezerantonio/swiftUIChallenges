//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - Property

    let sizes: [String] = ["XS", "S", "M", "L", "XL"]

    // MARK: - BODY

    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)

                HStack(alignment: .center, spacing: 3, content: {
                    Button(action: {}, label: {
                        ForEach(0 ..< 5, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 5)))
                                .foregroundStyle(.white)
                        }
                    })

                }) //: HSTACK

            }) //: VSTACK
            Spacer()

            // Sizes()

            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)

                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
                        })
                    }
                })
            })

        }) //: HStack
    }
}

#Preview {
    RatingsSizesDetailView().padding()
}
