//
//  LoaderComponent.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import SwiftUI

struct LoaderComponent: View {
    let text: String
    var body: some View {
        VStack{
            ProgressView(text)
        }
    }
}

struct LoaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        LoaderComponent(text: "Fetching")
    }
}
