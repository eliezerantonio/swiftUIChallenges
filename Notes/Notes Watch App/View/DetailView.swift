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

    @State private var isCreditsPresented: Bool = false
    @State private var isSettingsPresented: Bool = false

    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // MARK: - HEADER

            HeaderView(title: "")

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
                    .onTapGesture {
                        isSettingsPresented.toggle()
                    }.sheet(isPresented: $isSettingsPresented, content: {
                        SettingsView()
                    })

                Spacer()

                Text("\(count) / \(index + 1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }.sheet(isPresented: $isCreditsPresented, content: {
                        CreditsView()
                    })
            } //: STACK
            .foregroundColor(.secondary)
        } //: VSTACK
        .padding(3)
    }
}
