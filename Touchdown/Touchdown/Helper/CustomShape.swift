//
//  CustomShape.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))

        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .padding()
}
