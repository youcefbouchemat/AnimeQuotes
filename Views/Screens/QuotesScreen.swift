//
//  QuotesScreen.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import SwiftUI

struct QuotesScreen: View {
    var body: some View {
        List {
            ForEach(Quote.dummyData) { item in
                QuoteComponent(item: item)
            }
        }
    }
}

struct QuotesScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuotesScreen()
    }
}
