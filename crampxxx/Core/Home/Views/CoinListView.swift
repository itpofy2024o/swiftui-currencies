//
//  CoinListView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct CoinListView: View {
    @StateObject var dataModel: HomeViewModel
    var body: some View {
        VStack(alignment:.leading) {
            Text("All Coins and Tokens")
                .font(.headline).padding(.leading,10)
            
            HStack {
                Text("Coin/Token")
                    .font(.caption)
                Spacer()
                Text("Value")
                    .font(.caption)
            }.padding(.horizontal,10).padding(.vertical,2)
            
            ScrollView(.vertical) {
                VStack {
                    ForEach(dataModel.cryptos) { crypto in
                        CoinItemView(singleCrypto: crypto)
                    }
                }
            }
        }
    }
}

#Preview {
    CoinListView(dataModel: HomeViewModel())
}
