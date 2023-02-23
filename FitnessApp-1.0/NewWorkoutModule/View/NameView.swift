//
//  NameView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//

import UIKit

final class NameView: UIView {
    
    private let nameLabel = UILabel(text: "Name", textColor: .specialLightGray, font: .robotoMedium16)
    private let nameTextField = BrownTextField()
    
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
        addView(nameLabel)
        addView(nameTextField)
    }
    
    public func hideKeyboard() {
            nameTextField.resignFirstResponder()
        }
    
}

extension NameView {

    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            nameLabel.heightAnchor.constraint(equalToConstant: 17),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 1),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            nameTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
