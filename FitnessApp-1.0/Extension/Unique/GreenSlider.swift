//
//  GreenSlider.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//

import UIKit

final class GreenSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        maximumTrackTintColor = .specialLightGray
        minimumTrackTintColor = .specialGreen
    }
    
    convenience init(_ target: Any?, selector: Selector) {
        self.init()
        self.addTarget(target, action: selector, for: .valueChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
