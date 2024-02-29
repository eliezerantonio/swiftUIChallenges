//
//  Shop.swift
//  Touchdown
//
//  Created by Eliezer Antonio on 25/02/24.
//

import Foundation

class Shop : ObservableObject {
   @Published var showingProduct: Bool = false
   @Published var selectProduct: Product?
}
