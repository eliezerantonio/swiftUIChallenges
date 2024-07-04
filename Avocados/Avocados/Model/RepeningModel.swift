//
//  RepeningModel.swift
//  Avocados
//
//  Created by Eliezer Antonio on 04/07/24.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
