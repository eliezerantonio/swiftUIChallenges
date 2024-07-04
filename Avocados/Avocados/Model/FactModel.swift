//
//  FactModel.swift
//  Avocados
//
//  Created by Eliezer Antonio on 03/07/24.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
