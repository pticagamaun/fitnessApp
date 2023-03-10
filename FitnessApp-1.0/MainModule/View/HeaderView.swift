//
//  HeaderView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

protocol HeaderViewProtocol: AnyObject {
    func addWorkoutButtonTapped()
    func selectCalendarItem(indexPath: IndexPath)
}

final class HeaderView: UIView {
    
    weak var headerViewDelegate: HeaderViewProtocol?
    private let userPhoto: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .specialLightGray
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 5
        return image
    }()
    private let calendarView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialGreen
        view.layer.cornerRadius = 10
        return view
    }()
    private let userNameLabel = UILabel(text: "Your Name",
                                        textColor: .specialLightBlack,
                                        font: .robotoMedium24)
    private lazy var addWorkoutButton = AddWorkoutButton(self,
                                                         action: #selector(addWorkoutButtonTap),
                                                         event: .touchUpInside)
    private let weatherView = WeatherView()
    private let calendarCollectionView = CalendarCollectionView()
    private let workoutTodayLabel = UILabel(text: "Workout today", textColor: .systemGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addView(calendarView)
        addView(userPhoto)
        addView(userNameLabel)
        addView(addWorkoutButton)
        addView(weatherView)
        addView(calendarCollectionView)
        addView(workoutTodayLabel)
        calendarCollectionView.calendarDelegate = self
    }
    
    @objc private func addWorkoutButtonTap() {
        headerViewDelegate?.addWorkoutButtonTapped()
    }
    
    public func setCornerRadius() {
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
    }
    
}

extension HeaderView: CalendarCollectionProtocol {
    func selectItem(indexPath: IndexPath) {
        headerViewDelegate?.selectCalendarItem(indexPath: indexPath)
    }
}

extension HeaderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            userPhoto.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            userPhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            userPhoto.heightAnchor.constraint(equalToConstant: 100),
            userPhoto.widthAnchor.constraint(equalToConstant: 100),
            
            calendarView.topAnchor.constraint(equalTo: userPhoto.centerYAnchor),
            calendarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            calendarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            calendarView.heightAnchor.constraint(equalToConstant: 70),
            
            userNameLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10),
            userNameLabel.leadingAnchor.constraint(equalTo: userPhoto.trailingAnchor, constant: 5),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            userNameLabel.heightAnchor.constraint(equalToConstant: 24),
            
            addWorkoutButton.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 3),
            addWorkoutButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            addWorkoutButton.heightAnchor.constraint(equalToConstant: 90),
            addWorkoutButton.widthAnchor.constraint(equalToConstant: 90),
            
            weatherView.topAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: 3),
            weatherView.leadingAnchor.constraint(equalTo: addWorkoutButton.trailingAnchor, constant: 5),
            weatherView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            weatherView.heightAnchor.constraint(equalToConstant: 90),
            
            calendarCollectionView.topAnchor.constraint(equalTo: calendarView.topAnchor, constant: 5),
            calendarCollectionView.leadingAnchor.constraint(equalTo: calendarView.leadingAnchor, constant: 105),
            calendarCollectionView.trailingAnchor.constraint(equalTo: calendarView.trailingAnchor, constant: -5),
            calendarCollectionView.bottomAnchor.constraint(equalTo: calendarView.bottomAnchor, constant: -5),
            
            workoutTodayLabel.topAnchor.constraint(equalTo: addWorkoutButton.bottomAnchor, constant: 10),
            workoutTodayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
        ])
    }
}
