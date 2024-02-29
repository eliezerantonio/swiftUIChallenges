//
//  ContentView.swift
//  Devote
//
//  Created by Eliezer Antonio on 20/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/47981638?s=400&u=3a054485a36dcc2f7e54181c505898b0723dccdd&v=4")) { image in
                image
                    .resizable().scaledToFill()
                    .aspectRatio(contentMode: .fill).clipShape(Circle())

            } placeholder: {
                Color.gray
            }
            .frame(width: 250, height: 250)
        }
    }
}

#Preview {
    ContentView()
}
