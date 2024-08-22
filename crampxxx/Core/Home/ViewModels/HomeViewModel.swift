//
//  HomeViewModel.swift
//  crampxxx
//
//  Created by Devor Vlad on 22/8/2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var crypto = [Crypto]()
    @Published var topMover = [Crypto]()
    
    init() {
        retrieveCryptoData()
    }
    
    func retrieveCryptoData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h?x_cg_demo_api_key=CG-ipWYdxxgo15A6s2Jcqc7AaCj"
        
        guard let url = URL(string:urlString) else { return }
        
        URLSession.shared.dataTask(with: url) {
            data, response, error in
            if let err = error {
                print("Err \(err.localizedDescription)")
                return
            }
            if let resp = response as? HTTPURLResponse {
                print("Resp code: \(resp.statusCode)")
            }
            
            guard let data = data else { return }
//            let dString = String(data:data,encoding: .utf8)
//            print("\(String(describing: dString))")
            do {
                let market = try JSONDecoder().decode([Crypto].self,from: data)
                print("markets: \(market)")
                self.crypto=market
            } catch let error {
                print("market error: \(error)")
            }
        }.resume()
    }
    
    func TopMomentumFinder() {
        let topMoving = crypto.sorted(by: {$0.priceChangePercentage24H>$1.priceChangePercentage24H})
        self.topMover = Array(topMoving.prefix(5))
    }
}
