//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Eliezer Antonio on 28/06/24.
//

import SwiftUI

struct HeaderView: View {
    var title: String = ""
    var body: some View {
        VStack {
            // TITLE
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            // Separator
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            } //: HStack
            .foregroundColor(.accentColor)
        } //: VStack
    }
}

#Preview {
    Group {
        HeaderView(title: "Credits")

        HeaderView()
    }
}
