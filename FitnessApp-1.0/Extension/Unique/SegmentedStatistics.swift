//
//  SegmentedStatistics.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 23.02.2023.
//

import UIKit

class SegmentedStatistics: UISegmentedControl {
    
    override init(items: [Any]?) {
        super.init(items: items)
        
        selectedSegmentTintColor = .specialYellow
        selectedSegmentIndex = 0
        let font = UIFont(name: "Roboto-Medium", size: 16)
        setTitleTextAttributes([.font: font as Any, .foregroundColor: UIColor.white], for: .normal)
        setTitleTextAttributes([.font : font as Any, .foregroundColor : UIColor.specialBlack], for: .selected)
        backgroundColor = .specialGreen
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
