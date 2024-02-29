//
//  QuantityFavouriteDeatilView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 25/02/24.
//

import SwiftUI

struct QuantityFavouriteDeatilView: View {
    // MARK: - Property

    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }

            }, label: {
                Image(systemName: "minus.circle")
            })

            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)

            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            Spacer()

            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        } //: HSTACK
        )
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuantityFavouriteDeatilView()
}
