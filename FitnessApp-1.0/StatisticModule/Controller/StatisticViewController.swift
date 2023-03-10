//
//  StatisticViewController.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 23.02.2023.
//

import UIKit

final class StatisticViewController: UIViewController {
    
    private let titleLabel = UILabel(text: "STATISTIC", textColor: .specialBlack, font: .robotoMedium24)
    private let segmentedWeekMonth = SegmentedStatistics(items: ["Weeks", "Month"])
    private let exercisesLabel = UILabel(text: "Exercises", textColor: .specialLightGray)
    private let statisticTabelView = StatisticTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .mainBackground
        view.addView(titleLabel)
        view.addView(segmentedWeekMonth)
        view.addView(statisticTabelView)
        view.addView(exercisesLabel)
    }
}

extension StatisticViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            segmentedWeekMonth.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            segmentedWeekMonth.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            segmentedWeekMonth.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            segmentedWeekMonth.heightAnchor.constraint(equalToConstant: 35),
            
            exercisesLabel.topAnchor.constraint(equalTo: segmentedWeekMonth.bottomAnchor, constant: 15),
            exercisesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            exercisesLabel.heightAnchor.constraint(equalToConstant: 20),
            
            statisticTabelView.topAnchor.constraint(equalTo: exercisesLabel.bottomAnchor, constant: 10),
            statisticTabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            statisticTabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            statisticTabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}
