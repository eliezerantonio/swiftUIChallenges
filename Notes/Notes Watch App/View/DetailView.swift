//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Eliezer Antonio on 09/06/24.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Property

    let note: Note
    let count: Int
    let index: Int

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // MARK: - HEADER

            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            } //: hStack
            .foregroundColor(.accentColor)

            // MARK: - CONTENT

            Spacer()

            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()

            // MARK: - FOOTER

            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                Spacer()
                Text("\(count) / \(index + 1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
            } //: STACK
            .foregroundColor(.secondary)
        } //: VSTACK
        .padding(3)
    }
}
