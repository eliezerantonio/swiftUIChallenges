//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Eliezer Antonio on 17/07/24.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - Properties

    var title: String
    var subtitle: String
    var description: String
    var icon: String

    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()

                    Text(subtitle.uppercased())

                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(.pink)
                }

                Divider().padding(.bottom, 4)

                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

#Preview {
    GuideComponent(title: "Title", subtitle: "subtitle", description: "description", icon: "heart.circle")
}
