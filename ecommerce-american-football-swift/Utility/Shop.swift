//
//  Shop.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 15/11/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? //= nill
}
