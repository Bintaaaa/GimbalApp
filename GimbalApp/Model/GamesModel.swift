//
//  GamesModel.swift
//  GimbalApp
//
//  Created by Bijantyum on 02/10/22.
//

import Foundation

// MARK: - Games
struct Games: Decodable {
    let results: [Game]

    enum CodingKeys: String, CodingKey {
        case results
    }
}


// MARK: - Result
struct Game: Decodable {
    let id: Int
    let name, released: String
    let backgroundImage: String?
    let rating: Double
}
