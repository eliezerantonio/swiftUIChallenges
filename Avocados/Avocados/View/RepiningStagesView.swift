//
//  RepiningStagesView.swift
//  Avocados
//
//  Created by Eliezer Antonio on 02/07/24.
//

import SwiftUI

struct RepiningStagesView: View {
    // MARK: - PROPERTIES

    var ripeningStages: [Ripening] = ripeningData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    RepiningStagesView()
}
