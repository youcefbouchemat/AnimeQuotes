//
//  Quote.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import Foundation

struct Quote: Decodable{
    let anime: String
    let character: String
    let quote: String
}

extension Quote{
    static let dummyData: [Quote] = [
        Quote(anime: "Anime 1", character: "character 1", quote: "Random quote 1"),
        Quote(anime: "Anime 2", character: "character 2", quote: "Random quote 2"),
        Quote(anime: "Anime 3", character: "character 3", quote: "Random quote 3"),
        Quote(anime: "Anime 4", character: "character 4", quote: "Random quote 4"),
        Quote(anime: "Anime 5", character: "character 5", quote: "Random quote 5"),
    ]
}
