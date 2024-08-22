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
        form.numberStyle = .currency // if used will detect the local currency and adding the corresponding symbol in front of the formatted value
        form.minimumFractionDigits=8
        form.maximumFractionDigits=8
        return form
    }
    
    private var bigValueFormatter: NumberFormatter {
        let form = NumberFormatter()
        form.usesGroupingSeparator=true
        form.minimumFractionDigits=2
        form.maximumFractionDigits=2
        return form
    }
    
    private var smallMidValueFormatter: NumberFormatter {
        let form = NumberFormatter()
        form.usesGroupingSeparator=true
        form.numberStyle = .currency
        form.minimumFractionDigits=4
        form.maximumFractionDigits=4
        return form
    }
    
    func toSmallValue() -> String {
        return smallValueFormatter.string(for:self) ?? "$0.00"
    }
    
    func toSmallMidValue() -> String {
        return smallMidValueFormatter.string(for:self) ?? "$0.00"
    }
    
    func toBigValue() -> String {
        return bigValueFormatter.string(for:self) ?? "$0.00"
    }
}
