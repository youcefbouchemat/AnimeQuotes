//
//  HomeScreen.swift
//  AnimeQuotes
//
//  Created by apple on 18/3/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        Text(APIConstants.baseUrl)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
