//
//  MainViewController.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let headerView = HeaderView()
    
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
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.24)
        ])
    }
}



