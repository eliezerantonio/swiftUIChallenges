//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 24/02/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
