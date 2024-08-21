//
//  CoinListView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct CoinListView: View {
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
                    ForEach(0 ..< 250) { index in
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
