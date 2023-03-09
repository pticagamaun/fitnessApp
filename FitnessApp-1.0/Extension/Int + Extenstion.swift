//
//  Int + Extenstion.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 26.02.2023.
//

import Foundation

extension Int {
    
    func toMinutesAndSeconds() -> String {
        switch self {
        case ..<60: return "\(self) sec"
        case let sec where sec % 60 == 0: return "\(self / 60) min"
        default: return "\(self / 60) min \(self % 60) sec"
        }
    }
}
