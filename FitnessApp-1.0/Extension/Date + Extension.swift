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
    
    func getLocalDate() -> Date {
        let timeZone = TimeZone.current
        let secondsOffset = TimeInterval(timeZone.secondsFromGMT(for: self))
        let localDate = Date(timeInterval: secondsOffset, since: self)
        return localDate
    }
    
//    func toWeekdayAndDay() -> [[String]] {
//        let dateFormatter = DateFormatter()
//        dateFormatter.locale = Locale(identifier: "ru_RU")
//        let weekdayFormatter = dateFormatter.weekdaySymbols
//        let dayFormatter = DateFormatter()
//        dayFormatter.dateFormat = "d"
//        let weekday = weekdayFormatter[Calendar.current.component(.weekday, from: self) - 1]
//        let day = dayFormatter.string(from: self)
//        return [[weekday], [day]]
//    }
}
