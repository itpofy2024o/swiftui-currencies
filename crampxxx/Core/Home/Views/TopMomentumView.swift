//
//  TopMomentumView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct TopMomentumView: View {
    @StateObject var dataModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Momemtum")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(dataModel.topMover) { mover in
                        TopMomentumItemView(upCrypto: mover)
                    }
                }.padding(EdgeInsets(top: 1, leading: 1, bottom: 0, trailing: 0))
            }.scrollIndicators(.hidden)
        }.padding()
    }
}

#Preview {
    TopMomentumView(dataModel: HomeViewModel())
}
