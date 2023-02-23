//
//  NewWorkoutViewController.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 18.02.2023.
//

import UIKit

final class NewWorkoutViewController: UIViewController {
    
    private let titleLabel = UILabel(text: "NEW WORKOUT", textColor: .specialBlack, font: .robotoMedium24)
    private lazy var closeButton = CloseButton(self, action: #selector(tapCloseButton), event: .touchUpInside)
    private let nameView = NameView()
    private let dateAndRepeatView = DateAndRepeatView()
    private let repsOrTimerView = RepsOrTimerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setConstraints()
        setupGestureRecognizers() 
    }
    
    private func setupView() {
        view.backgroundColor = .mainBackground
        view.addView(titleLabel)
        view.addView(closeButton)
        view.addView(nameView)
        view.addView(dateAndRepeatView)
        view.addView(repsOrTimerView)
    }
    
    @objc private func tapCloseButton() {
        dismiss(animated: true)
    }
    
    private func setupGestureRecognizers() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        swipeGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(swipeGesture)
    }
    
    @objc private func dismissKeyboard() {
        nameView.hideKeyboard()
    }
}

extension NewWorkoutViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            closeButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor, constant: 0),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            closeButton.heightAnchor.constraint(equalToConstant: 30),
            closeButton.widthAnchor.constraint(equalToConstant: 30),
            
            nameView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            nameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
            
            dateAndRepeatView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10),
            dateAndRepeatView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dateAndRepeatView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dateAndRepeatView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.145),
            
            repsOrTimerView.topAnchor.constraint(equalTo: dateAndRepeatView.bottomAnchor, constant: 20),
            repsOrTimerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            repsOrTimerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            repsOrTimerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        ])
    }
}
