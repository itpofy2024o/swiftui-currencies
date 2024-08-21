//
//  TopMomentumItemView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct TopMomentumItemView: View {
    var body: some View {
        VStack {
            Image(systemName: "")
                .resizable()
                .frame(width: 45,height: 45)
                .foregroundColor(.green)
            HStack {
                Text("HBAR")
                    .font(.caption)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("20,0000.5678")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Text("+ 34%")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    TopMomentumItemView()
}
