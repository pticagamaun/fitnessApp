//
//  CloseButton.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 18.02.2023.
//

import UIKit

final class CloseButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setButton() {
        setImage(UIImage(named: "closeButton")?.withRenderingMode(.alwaysOriginal), for: .normal)
    }
    
    convenience init(_ target: AnyObject, action: Selector, event: UIControl.Event) {
        self.init(frame: .zero)
        self.addTarget(target, action: action, for: event)
    }
    
}
