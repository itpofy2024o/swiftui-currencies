//
//  HomeView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                
            }.navigationTitle("Coins Streaming")
        }
    }
}

#Preview {
    HomeView()
}
