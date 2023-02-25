//
//  CalendarCollectionViewCell.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 12.02.2023.
//

import UIKit

final class CalendarCollectionViewCell: UICollectionViewCell {
    
    static let idCallendarCollectionCell = "CalendarCollectionViewIdentifier"
    private let weekdayLabel = UILabel(text: "Tu", textColor: .white, font: .robotoMedium16)
    private let dayLabel = UILabel(text: "19", textColor: .white, font: .robotoMedium20)
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                backgroundColor = .specialYellow
                weekdayLabel.textColor = .specialLightBlack
                dayLabel.textColor = .specialLightBlack
            } else {
                backgroundColor = .none
                weekdayLabel.textColor = .white
                dayLabel.textColor = .white
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCell() {
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
