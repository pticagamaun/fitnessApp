//
//  DateAndRepeatView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//

import UIKit

final class DateAndRepeatView: UIView {
    
    private let dateAndRepeatLabel = UILabel(text: "Date and repeat", textColor: .specialLightGray, font: .robotoMedium16)
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialBrown
        view.layer.cornerRadius = 10
        return view
    }()
    private let dateLabel = UILabel(text: "Date", textColor: .specialLightBlack, font: .robotoMedium20)
    private let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.tintColor = .specialGreen
        datePicker.subviews[0].subviews[0].subviews[0].alpha = 0
        return datePicker
    }()
    private let repeatLabel = UILabel(text: "Repeat every 7 days", textColor: .specialLightBlack, font: .robotoMedium20)
    private lazy var repeatSwitch: UISwitch = {
        let repeatSwitch = UISwitch()
        repeatSwitch.onTintColor = .specialGreen
        repeatSwitch.tintColor = .white
        repeatSwitch.backgroundColor = .none
        repeatSwitch.isOn = true
        repeatSwitch.addTarget(self, action: #selector(changeValueSwitch), for: .valueChanged)
        return repeatSwitch
    }()
    private var dateStackView = UIStackView()
    private var repeatStackView = UIStackView()
    
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
        addView(dateAndRepeatLabel)
        addView(backgroundView)
        dateStackView = UIStackView([dateLabel, datePicker], spacing: 5, axis: .horizontal)
        addView(dateStackView)
        repeatStackView = UIStackView([repeatLabel, repeatSwitch], spacing: 5, axis: .horizontal)
        addView(repeatStackView)
    }
    
    @objc private func changeValueSwitch() {
        print(#function)
    }
}

extension DateAndRepeatView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dateAndRepeatLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            dateAndRepeatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dateAndRepeatLabel.heightAnchor.constraint(equalToConstant: 17),
            
            backgroundView.topAnchor.constraint(equalTo: dateAndRepeatLabel.bottomAnchor, constant: 1),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            dateStackView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 15),
            dateStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            dateStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10),
            dateStackView.heightAnchor.constraint(equalToConstant: 30),
            
            repeatStackView.topAnchor.constraint(equalTo: dateStackView.bottomAnchor, constant: 15),
            repeatStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            repeatStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -25),
            repeatStackView.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}
