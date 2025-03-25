//
//  Pet.swift
//  CatAdoptio
//
//  Created by Azalia Amanda on 24/03/25.
//

import Foundation

struct Pet: Hashable, Codable, Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var catType: String
    var weight: Int
    var gender: String
    var location: Int
    var isFavorite: Bool = false
}

extension Pet {
    static let all: [Pet] = [
        Pet(name: "Butet", image: "Butet", catType: "Domestic", weight: 2, gender: "Male", location: 3),
        Pet(name: "Kentang", image: "Kentang", catType: "Sphinx", weight: 3, gender: "Male", location: 7),
        Pet(name: "Sky", image: "Sky", catType: "Persian", weight: 2, gender: "Female", location: 4)
    ]
}
