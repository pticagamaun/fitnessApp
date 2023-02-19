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
        addView(setsSlider)
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
            
            setsSlider.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 15),
            setsSlider.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            setsSlider.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10),
            setsSlider.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
