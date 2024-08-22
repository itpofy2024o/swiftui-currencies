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
                Text(
                    singleCrypto.currentPrice >= 1.0 ?"$ \(String(format: "%.2f", singleCrypto.currentPrice))" :
                        (
                            singleCrypto.currentPrice > 0.0001 ? "$ \(String(format: "%.4f", singleCrypto.currentPrice))"
                            : "$ \(String(format: "%.6f", singleCrypto.currentPrice))"
                        )
                    )
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading,4)
                Text(singleCrypto.priceChangePercentage24H > 0.0 ? "+ \(String(format: "%.2f", singleCrypto.priceChangePercentage24H))%" : "- \(String(format: "%.2f", singleCrypto.priceChangePercentage24H * -1))%")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(singleCrypto.priceChangePercentage24H < 0.0 ? Color(
                        red:240.0/255.0,
                        green:60.0/255.0,
                        blue:50.0/255.0
                    ):Color(
                        red:50.0/255.0,
                        green:210.0/255.0,
                        blue:50.0/255.0
                    )).padding(.leading,5)
            }.padding(.leading,2)
        }.padding(.horizontal,10).padding(.vertical,4)
    }
}

//#Preview {
//    CoinItemView()
//}
