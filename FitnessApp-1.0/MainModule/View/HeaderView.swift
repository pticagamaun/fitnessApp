//
//  HeaderView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

final class HeaderView: UIView {
    
    private let userPhoto: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .specialLightGray
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 5
        return image
    }()
    
    private let subView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialGreen
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let userNameLabel = UILabel(text: "Your Name", textColor: .specialTextColor)
    private let addWorkoutButton = AddWorkoutButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addView(subView)
        addView(userPhoto)
        addView(userNameLabel)
        addView(addWorkoutButton)
    }
    
    public func setCornerRadius() {
        userPhoto.layer.cornerRadius = userPhoto.frame.height / 2
    }
    
}

extension HeaderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            userPhoto.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            userPhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            userPhoto.widthAnchor.constraint(equalToConstant: 100),
            userPhoto.heightAnchor.constraint(equalToConstant: 100),
            
            subView.topAnchor.constraint(equalTo: userPhoto.centerYAnchor, constant: 0),
            subView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            subView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            subView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4),
            
            userNameLabel.leadingAnchor.constraint(equalTo: userPhoto.trailingAnchor, constant: 0),
            userNameLabel.bottomAnchor.constraint(equalTo: subView.topAnchor, constant: -7),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            userNameLabel.heightAnchor.constraint(equalToConstant: 25),
            
            addWorkoutButton.topAnchor.constraint(equalTo: subView.bottomAnchor, constant: 5),
            addWorkoutButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            addWorkoutButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25),
            
        ])
    }
}
