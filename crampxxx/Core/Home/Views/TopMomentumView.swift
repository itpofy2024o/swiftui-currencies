//
//  TopMomentumView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct TopMomentumView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Momemtum")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 12) {
                    ForEach(0 ..< 4) { _ in
                        TopMomentumItemView()
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    TopMomentumView()
}
