//
//  CardModel.swift
//  Learn By Doing
//
//  Created by Eliezer Antonio on 30/06/24.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
