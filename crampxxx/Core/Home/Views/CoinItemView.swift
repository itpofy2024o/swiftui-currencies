//
//  CoinItemView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct CoinItemView: View {
    let id: Int
    var body: some View {
        HStack(spacing: 10) {
//            Text(String(id))
//                .font(.caption2)
//                .fontWeight(.bold)
//                .foregroundColor(.black)
//                .frame(width: 35, alignment: .leading)
//                .background(.clear)
            
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 35,height: 35)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("LiteCoin")
                    .font(.subheadline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(
                        red:60.0/255.0,
                        green:50.0/255.0,
                        blue:40.0/255.0
                    )).padding(.leading,4)
                Text("LTC")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(Color(
                        red:70.0/255.0,
                        green:60.0/255.0,
                        blue:50.0/255.0
                    )).padding(.leading,5)
            }.padding(.leading,2)
            
            Spacer()
            
            VStack(alignment: .trailing,spacing:4) {
                Text("$ 65,000.23")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(
                        red:60.0/255.0,
                        green:50.0/255.0,
                        blue:40.0/255.0
                    )).padding(.leading,4)
                Text("- 5.6%")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(Color(
                        red:270.0/255.0,
                        green:60.0/255.0,
                        blue:50.0/255.0
                    )).padding(.leading,5)
            }.padding(.leading,2)
        }.padding(.horizontal).padding(.vertical,4)
    }
}

#Preview {
    CoinItemView(id:1)
}
