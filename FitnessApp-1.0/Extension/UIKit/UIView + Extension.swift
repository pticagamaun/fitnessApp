//
//  UIView + Extension.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

extension UIView {
    func addView(_ view: UIView) {
            self.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
        }
}
