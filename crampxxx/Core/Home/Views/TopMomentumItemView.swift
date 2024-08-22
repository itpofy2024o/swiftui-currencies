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
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(colorScheme == .dark ? Color(
                    red:210.0/255.0,
                    green:211.0/255.0,
                    blue:212.0/255.0
                ).opacity(0.5):Color(
                    red:210.0/255.0,
                    green:211.0/255.0,
                    blue:212.0/255.0
                ).opacity(0.25))
                .frame(width: 150, height: 150)
            
            VStack(alignment: .leading) {
                KFImage(URL(string:upCrypto.image))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45,height: 45)
                    .padding(
                        EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 0)
                    )
                HStack(spacing: 5) {
                    Text(upCrypto.symbol.uppercased())
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                        .foregroundColor(Color(
//                            red:5.0/255.0,
//                            green:68.0/255.0,
//                            blue:230.0/255.0
//                        ).opacity(0.8))
                    Text(
                        upCrypto.currentPrice >= 1.0 ? "\(String(format: "%.2f", upCrypto.currentPrice))" :
                            (
                                upCrypto.currentPrice > 0.001 ? "\(String(format: "%.4f", upCrypto.currentPrice))"
                                : "\(String(format: "%.6f", upCrypto.currentPrice))"
                            )
                        )
                        .font(.caption)
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
        }
        
    }
}

//#Preview {
//    TopMomentumItemView()
//}
