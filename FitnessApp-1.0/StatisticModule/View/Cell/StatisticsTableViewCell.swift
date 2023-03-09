//
//  StatisticsTableViewCell.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 23.02.2023.
//

import UIKit

final class StatisticsTableViewCell: UITableViewCell {
    
    static let identifier = "statisticTableView"
    private let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLightGray
        return view
    }()
    private let numberStatLabel = UILabel(text: "0", textColor: .specialGreen, font: .robotoBold28)
    private let workoutNameLabel = UILabel(text: "Pull Ups", textColor: .specialBlack, font: .robotoMedium24)
    private let beforeLabel = UILabel(text: "Before: 18", textColor: .specialLightGray, font: .robotoMedium14)
    private let afterLabel = UILabel(text: "After: 20", textColor: .specialLightGray, font: .robotoMedium14)
    private var stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCell() {
        backgroundColor = .clear
        addView(separatorView)
        addView(numberStatLabel)
        addView(workoutNameLabel)
        stackView = UIStackView([beforeLabel, afterLabel], spacing: 5, axis: .horizontal)
        addView(stackView)
    }
    
}

extension StatisticsTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            separatorView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
            
            numberStatLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
            numberStatLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            numberStatLabel.heightAnchor.constraint(equalToConstant: 25),
            
            workoutNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            workoutNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            workoutNameLabel.heightAnchor.constraint(equalToConstant: 29),
            
            stackView.topAnchor.constraint(equalTo: workoutNameLabel.bottomAnchor, constant: 3),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            stackView.heightAnchor.constraint(equalToConstant: 15)
        ])
    }
}
