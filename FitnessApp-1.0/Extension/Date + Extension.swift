//
//  Date + Extension.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 02.03.2023.
//

import Foundation

extension Date {
    func weekdayNumber() -> Int {
        let calendar = Calendar(identifier: .gregorian)
        return calendar.component(.weekday, from: self)
    }
}
