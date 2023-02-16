//
//  CalendarCollectionViewCell.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 12.02.2023.
//

import UIKit

final class CalendarCollectionViewCell: UICollectionViewCell {
    
    static let idCallendarCollectionCell = "CalendarCollectionViewIdentifier"
    private let weekdayLabel = UILabel(text: "Tu", textColor: .specialLightBlack, font: .robotoMedium16)
    private let dayLabel = UILabel(text: "19", textColor: .specialDarkGreen, font: .robotoMedium20)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCell() {
        backgroundColor = .specialYellow
        layer.cornerRadius = 10
        weekdayLabel.textAlignment = .center
        dayLabel.textAlignment = .center
        addView(weekdayLabel)
        addView(dayLabel)
    }
}

extension CalendarCollectionViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weekdayLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            weekdayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            
            dayLabel.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
            dayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
        ])
    }
    
}
