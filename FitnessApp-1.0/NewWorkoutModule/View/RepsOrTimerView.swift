//
//  RepsOrTimerView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//

import UIKit

final class RepsOrTimerView: UIView {
    
    private let repsOrTimerLabel = UILabel(text: "Reps or timer", textColor: .specialLightGray, font: .robotoMedium16)
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 10
        return view
    }()
    private let setsSlider = SliderView(name: "Sets", minValue: 0, maxValue: 10)
    private let chooseRepsOrTimer = UILabel(text: "Choose repeat or timer", textColor: .specialLightGray, font: .robotoMedium16)
    private let repsSlider = SliderView(name: "Reps", minValue: 0, maxValue: 30)
    private let timerSlider = SliderView(name: "Timer", minValue: 0, maxValue: 600)
    private var stackView = UIStackView()
    private lazy var saveButton = GreenButton(title: "SAVE", target: self, action: #selector(saveButtonTapped))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .none
        addView(repsOrTimerLabel)
        addView(backgroundView)
        stackView = UIStackView([setsSlider, chooseRepsOrTimer, repsSlider, timerSlider], spacing: 10, axis: .vertical)
        addView(stackView)
        chooseRepsOrTimer.textAlignment = .center
        addView(saveButton)
    }
    
    @objc private func saveButtonTapped() {
        print(#function)
    }
}

extension RepsOrTimerView: SliderViewProtocol {
    func sliderValue() {
    }
}

extension RepsOrTimerView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            repsOrTimerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            repsOrTimerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            repsOrTimerLabel.heightAnchor.constraint(equalToConstant: 17),
            
            backgroundView.topAnchor.constraint(equalTo: repsOrTimerLabel.bottomAnchor, constant: 1),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            stackView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 15),
            stackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10),
            stackView.heightAnchor.constraint(equalTo: backgroundView.heightAnchor, multiplier: 0.85),
            
            saveButton.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            saveButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            saveButton.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
}
