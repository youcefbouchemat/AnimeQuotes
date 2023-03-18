//
//  QuoteComponent.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import SwiftUI

struct QuoteComponent: View {
    let item: Quote
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
            Label(item.anime, systemImage: "tv")
            Label(item.character, systemImage: "person")
            Label(item.quote, systemImage: "quote.bubble")
                .lineLimit(2)
        }.padding()
    }
}

struct QuoteComponent_Previews: PreviewProvider {
    static var previews: some View {
        QuoteComponent(item: Quote.dummyData.last!)
    }
}
