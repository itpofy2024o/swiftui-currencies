//
//  TopMomentumItemView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI
import Kingfisher

struct TopMomentumItemView: View {
    let upCrypto: Crypto
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(URL(string:upCrypto.image))
                .resizable()
                .scaledToFit()
                .frame(width: 45,height: 45)
                .background(Color(.white))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(.clear),lineWidth: 0.5)
                )
                .padding(
                    EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 0)
                )
            HStack(spacing: 5) {
                Text(upCrypto.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(
                    upCrypto.currentPrice < 0.0 ? "\(String(format: "%.5f", upCrypto.currentPrice))"
                    : "\(String(format: "%.2f", upCrypto.currentPrice))")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }.padding(
                .leading,4
            )
            Text("+ \(String(format: "%.2f", upCrypto.priceChangePercentage24H))%")
                .font(.title2)
                .foregroundColor(.green)
                .padding(
                    EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 0)
                )
        }
        .frame(width: 150, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color(.systemGray2),lineWidth: 2)
        )
    }
}

//#Preview {
//    TopMomentumItemView()
//}
