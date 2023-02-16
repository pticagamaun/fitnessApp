//
//  WorkoutTableViewCell.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 13.02.2023.
//

import UIKit

protocol MainTableViewCellProtocol: AnyObject {
    func startButtonTapped()
}

final class WorkoutTableViewCell: UITableViewCell {
    
    weak var workoutCellDelegate: MainTableViewCellProtocol?
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
    private let workoutImage: UIImageView = {
        let image = UIImageView()
        image.tintColor = .black
        image.image = UIImage(named: "workoutImage")?.withRenderingMode(.alwaysTemplate)
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let titleWorkoutLabel = UILabel(text: "Pull Ups", textColor: .specialBlack, font: .robotoMedium22)
    private let repsLabel = UILabel(text: "Reps: 10", textColor: .specialLightBlack, font: .robotoMedium16)
    private let setsLabel = UILabel(text: "Sets: 2", textColor: .specialLightBlack, font: .robotoMedium16)
    private lazy var startButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .specialYellow
        button.setTitle("START", for: .normal)
        button.titleLabel?.font = .robotoMedium16
        button.setTitleColor(UIColor.specialDarkGreen, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(startWorkoutButtonTapped), for: .touchUpInside)
        button.dropShadow()
        return button
    }()
    private var stackView = UIStackView()
    private var labelsStackView = UIStackView()
    
    
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
        subView.addView(workoutImage)
        stackView = UIStackView([repsLabel, setsLabel], spacing: 5, axis: .horizontal)
        labelsStackView = UIStackView([titleWorkoutLabel, stackView], spacing: 5, axis: .vertical)
        addView(labelsStackView)
        contentView.addView(startButton)
    }
    
    @objc private func startWorkoutButtonTapped() {
        workoutCellDelegate?.startButtonTapped()
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
            
            workoutImage.topAnchor.constraint(equalTo: subView.topAnchor, constant: 5),
            workoutImage.leadingAnchor.constraint(equalTo: subView.leadingAnchor, constant: 5),
            workoutImage.bottomAnchor.constraint(equalTo: subView.bottomAnchor, constant: -5),
            workoutImage.trailingAnchor.constraint(equalTo: subView.trailingAnchor, constant: -5),
            
            labelsStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            labelsStackView.leadingAnchor.constraint(equalTo: subView.trailingAnchor, constant: 10),
            labelsStackView.heightAnchor.constraint(equalToConstant: 40),
            
            startButton.topAnchor.constraint(equalTo: labelsStackView.bottomAnchor, constant: 3),
            startButton.leadingAnchor.constraint(equalTo: subView.trailingAnchor, constant: 10),
            startButton.trailingAnchor.constraint(equalTo: backgroundViewCell.trailingAnchor, constant: -10),
            startButton.bottomAnchor.constraint(equalTo: backgroundViewCell.bottomAnchor, constant: -10)
        ])
    }
}
