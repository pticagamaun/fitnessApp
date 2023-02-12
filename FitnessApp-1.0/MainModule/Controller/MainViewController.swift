//
//  MainViewController.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let headerView = HeaderView()
    private let workoutTableView = WorkoutTableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        headerView.setCornerRadius()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor.mainBackground
        view.addView(headerView)
        view.addView(workoutTableView)
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.27),
            
            workoutTableView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 0),
            workoutTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            workoutTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            workoutTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}



