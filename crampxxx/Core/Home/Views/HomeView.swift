//
//  HomeView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct HomeView: View {
    @StateObject var coin24hModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                TopMomentumView(dataModel: coin24hModel)
                Divider()
                CoinListView(dataModel: coin24hModel)
            }.navigationTitle("Coins Streaming")
        }
    }
}

#Preview {
    HomeView()
}
