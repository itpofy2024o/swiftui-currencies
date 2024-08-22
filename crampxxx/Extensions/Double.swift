//
//  Double.swift
//  crampxxx
//
//  Created by Devor Vlad on 22/8/2024.
//

import Foundation

extension Double {
    private var smallValueFormatter: NumberFormatter {
        let form = NumberFormatter()
        form.usesGroupingSeparator=true
        form.numberStyle = .currency
        form.minimumFractionDigits=8
        form.maximumFractionDigits=8
        return form
    }
    
    private var bigValueFormatter: NumberFormatter {
        let form = NumberFormatter()
        form.usesGroupingSeparator=true
        form.numberStyle = .currency
        form.minimumFractionDigits=2
        form.maximumFractionDigits=2
        return form
    }
    
    func toSmallValue() -> String {
        return smallValueFormatter.string(for:self) ?? "$0.00"
    }
    
    func toBigValue() -> String {
        return bigValueFormatter.string(for:self) ?? "$0.00"
    }
}
