//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Eliezer Antonio on 17/07/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
