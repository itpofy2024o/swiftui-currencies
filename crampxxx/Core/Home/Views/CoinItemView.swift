//
//  CoinItemView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct CoinItemView: View {
    let singleCrypto: Crypto
    var body: some View {
        HStack(spacing: 5) {
            AsyncImage(url: URL(string: "\(singleCrypto.image)"))
                { phase in
                        switch phase {
                        case .failure:
                            Image(systemName: "bitcoinsign.circle")
                                .font(.largeTitle)
                        case .success(let image):
                            image
                                .resizable()
                        default:
                            ProgressView()
                        }
                }
                .scaledToFit()
                .frame(width: 35,height: 35)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(singleCrypto.name)
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading,4)
                Text(singleCrypto.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.medium)
                    .padding(.leading,5)
            }.padding(.leading,2)
            
            Spacer()
            
            VStack(alignment: .trailing,spacing:4) {
                Text(String(singleCrypto.currentPrice))
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                Text("\(singleCrypto.priceChangePercentage24H)")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(Color(
                        red:270.0/255.0,
                        green:60.0/255.0,
                        blue:50.0/255.0
                    )).padding(.leading,5)
            }.padding(.leading,2)
        }.padding(.horizontal,10).padding(.vertical,4)
    }
}

//#Preview {
//    CoinItemView()
//}
