//
//  QuotesScreen.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import SwiftUI

struct QuotesScreen: View {
    
    @StateObject private var vm: QuotesViewModel = QuotesViewModel(service: QuotesService())
    
    var body: some View {
        Group {
            if(vm.isLoading)
            {
                LoaderComponent(text: "Fetching Quotes")
            } else {
                List {
                    ForEach(vm.quotes,id: \.quote) { item in
                        QuoteComponent(item: item)
                    }
                }.refreshable {
                    Task {
                        await vm.refreshRandomQuotes()
                    }
                }
            }
        }.task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
