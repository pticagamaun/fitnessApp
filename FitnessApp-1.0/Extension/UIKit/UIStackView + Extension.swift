//
//  UIStackView + Extension.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 16.02.2023.
//

import UIKit

extension UIStackView {
    
    convenience init(_ arrangedSubviews: [UIView], spacing: CGFloat, axis: NSLayoutConstraint.Axis) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.spacing = spacing
        self.axis = axis
    }

}
