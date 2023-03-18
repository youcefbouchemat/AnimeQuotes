//
//  QuotesService.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import Foundation

protocol QuotesServiceProtocol{
    func fetchRandomQuotes() async throws -> [Quote]
}

final class QuotesService: QuotesServiceProtocol{
    func fetchRandomQuotes() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/quotes"))
        let (data,_) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Quote].self, from: data)
    }
}
