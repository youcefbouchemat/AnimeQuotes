//
//  QuotesViewModel.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import Foundation

protocol QuotesViewModelProtocol: ObservableObject{
    func getRandomQuotes() async
    func refreshRandomQuotes() async
}

@MainActor
final class QuotesViewModel: QuotesViewModelProtocol{
    @Published private(set) var isLoading: Bool = false
    
    @Published private(set) var quotes: [Quote] = []
    
    private let service: QuotesServiceProtocol
    
    init(service: QuotesServiceProtocol) {
        self.service = service
    }
    
    func getRandomQuotes() async {
        isLoading = true
        await refreshRandomQuotes()
        isLoading = false
    }
    
    func refreshRandomQuotes() async {
        do{
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print("Error")
        }
    }
    
    
}
