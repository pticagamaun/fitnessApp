//
//  WorkoutTableViewCell.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 13.02.2023.
//

import UIKit

final class WorkoutTableViewCell: UITableViewCell {
    
    static let idWorkoutTableViewCell = "idWorkoutTableViewCell"
    private let backgroundViewCell: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.backgroundColor = .specialBrown
        return view
    }()
    private let subView: UIView = {
        let view = UIView()
        view.backgroundColor = .specialLight
        view.layer.cornerRadius = 15
        return view
    }()
    private let imageWorkout: UIImageView = {
        let image = UIImageView()
        image.tintColor = .black
        image.image = UIImage(named: "workoutImage")?.withRenderingMode(.alwaysTemplate)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setCell()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setCell() {
        backgroundColor = .clear
        addView(backgroundViewCell)
        addView(subView)
        subView.addView(imageWorkout)
    }
    
}

extension WorkoutTableViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundViewCell.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundViewCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
            subView.topAnchor.constraint(equalTo: backgroundViewCell.topAnchor, constant: 10),
            subView.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 10),
            subView.bottomAnchor.constraint(equalTo: backgroundViewCell.bottomAnchor, constant: -10),
            subView.widthAnchor.constraint(equalTo: backgroundViewCell.widthAnchor, multiplier: 0.2),
            
            imageWorkout.topAnchor.constraint(equalTo: subView.topAnchor, constant: 5),
            imageWorkout.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 5),
            imageWorkout.bottomAnchor.constraint(equalTo: subView.bottomAnchor, constant: -5),
            imageWorkout.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -5),
        ])
    }
}
