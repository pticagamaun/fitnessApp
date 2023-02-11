//
//  UILabel + Extension.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, textColor: UIColor) {
        self.init(frame: .zero)
        self.text = text
        self.textColor = textColor
    }
    
}
