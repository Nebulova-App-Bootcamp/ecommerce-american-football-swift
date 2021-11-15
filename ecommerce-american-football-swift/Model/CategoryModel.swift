//
//  CategoryModel.swift
//  ecommerce-american-football-swift
//
//  Created by Jose Manuel Barba Sánchez on 15/11/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
