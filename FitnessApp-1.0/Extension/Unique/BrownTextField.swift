//
//  BrownTextField.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//

import UIKit

final class BrownTextField: UITextField {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.borderStyle = .none
        self.layer.cornerRadius = 10
        self.backgroundColor = .specialBrown
        self.textColor = .specialBlack
        self.font = .robotoMedium20
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        self.leftViewMode = .always
        self.clearButtonMode = .always
        self.returnKeyType = .done
    }
}
