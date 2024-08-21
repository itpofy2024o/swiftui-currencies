//
//  CoinListView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct CoinListView: View {
    var body: some View {
        VStack {
            Text("All Coins and Tokens")
                .font(.headline)
            
            HStack {
                Text("Coin/Token")
                    .font(.caption)
                Spacer()
                Text("Value")
                    .font(.caption)
            }.padding(.horizontal).padding(.vertical,2)
            
            ScrollView(.vertical) {
                VStack {
                    ForEach(0 ..< 25) { index in
                        CoinItemView(id: index+1)
                    }
                }
            }
        }
    }
}

#Preview {
    CoinListView()
}
