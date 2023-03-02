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
    private let setsSliderView = SliderView(name: "Sets", minValue: 0, maxValue: 10, type: .sets)
    private let chooseRepsOrTimer = UILabel(text: "Choose repeat or timer", textColor: .specialLightGray, font: .robotoMedium16)
    private let repsSliderView = SliderView(name: "Reps", minValue: 0, maxValue: 30, type: .reps)
    private let timerSliderView = SliderView(name: "Timer", minValue: 0, maxValue: 600, type: .timer)
    private var stackView = UIStackView()
    public var (sets, reps, timer) = (0, 0, 0)
    
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
        stackView = UIStackView([setsSliderView, chooseRepsOrTimer, repsSliderView, timerSliderView], spacing: 10, axis: .vertical)
        addView(stackView)
        chooseRepsOrTimer.textAlignment = .center
        setDelegate()
    }
    
    private func setDelegate() {
        setsSliderView.sliderViewDelegate = self
        repsSliderView.sliderViewDelegate = self
        timerSliderView.sliderViewDelegate = self
    }
}

extension RepsOrTimerView: SliderViewProtocol {
    func sliderValue(sliderType: SliderType, value: Int) {
        switch sliderType {
        case .sets:
            sets = value
        case .reps:
            timerSliderView.isActive = false
            repsSliderView.isActive = true
            reps = value
            timer = 0
        case .timer:
            timerSliderView.isActive = true
            repsSliderView.isActive = false
            timer = value
            reps = 0
        }
    }
}

//MARK: - Constraints

private extension RepsOrTimerView {
    
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
        ])
    }
}
