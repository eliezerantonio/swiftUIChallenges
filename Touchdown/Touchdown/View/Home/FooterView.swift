//
//  FooterView.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 22/02/24.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, confrtable, lightweiht and durable football helmets in the market at affordable pirces.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)

            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)

            Text("Copyright @ Eliezer Antonio \nAll right reverved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VSTACK
        .padding()
    }
}

#Preview {
    FooterView()
}
