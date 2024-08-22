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
    
    func toSmallValue() -> String {
        return smallValueFormatter.string(for:self) ?? "$0.00"
    }
}
