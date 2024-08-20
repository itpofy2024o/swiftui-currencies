//
//  ContentView.swift
//  crampxxx
//
//  Created by Devor Vlad on 21/8/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .padding(
                    EdgeInsets(
                        top: 10, leading: 0,
                        bottom: 10, trailing: 0
                    )
                )
            Text("This is all about you!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
