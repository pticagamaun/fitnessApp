//
//  GreenButton.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 23.02.2023.
//

import UIKit

class GreenButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String, target: Any?, action: Selector) {
        self.init()
        self.setTitle(title, for: .normal)
        self.addTarget(target, action: action, for: .touchUpInside)
    }
    
    private func setupButton() {
        backgroundColor = .specialGreen
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .robotoMedium18
        layer.cornerRadius = 5.0
        clipsToBounds = true
    }
}
