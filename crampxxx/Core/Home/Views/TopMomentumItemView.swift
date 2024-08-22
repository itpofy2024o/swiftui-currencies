//
//  TopMomentumItemView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct TopMomentumItemView: View {
//    let singleCrypto: Crypto
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 45,height: 45)
                .foregroundColor(.green)
                .padding(
                    EdgeInsets(top: 0, leading: 5, bottom: 5, trailing: 0)
                )
            HStack(spacing: 5) {
                Text("HBAR")
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("20,0000.5678")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }.padding(
                .leading,4
            )
            Text("+ 34%")
                .font(.title2)
                .foregroundColor(.orange)
                .padding(
                    EdgeInsets(top: 0, leading: 3, bottom: 0, trailing: 0)
                )
        }
        .frame(width: 150, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.black),lineWidth: 1)
        )
    }
}

#Preview {
    TopMomentumItemView()
}
