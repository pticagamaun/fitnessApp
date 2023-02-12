//
//  AddWorkoutButton.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 11.02.2023.
//

import UIKit

final class AddWorkoutButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        dropShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton() {
        backgroundColor = .specialYellow
        setImage(UIImage(named: "plus")?.withRenderingMode(.alwaysTemplate), for: .normal)
        tintColor = .specialDarkGreen
        layer.cornerRadius = 10
        buttonConfiguration()
    }
    
    convenience init(_ target: UIView, action: Selector, event: UIControl.Event) {
        self.init(frame: .zero)
        self.addTarget(target, action: action, for: event)
    }
    
    private func buttonConfiguration() {
        if #available(iOS 15.0, *) {
            var configuration = UIButton.Configuration.plain()
            configuration.imagePlacement = .top
            configuration.imagePadding = 10
            configuration.titleAlignment = .center
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 0, trailing: 0)
            configuration.attributedTitle = AttributedString("Add Workout",
                                                             attributes: AttributeContainer([NSAttributedString.Key.font: UIFont(name: "Roboto-Medium",size: 13) as Any]))
            self.configuration = configuration
        } else {
            imageEdgeInsets = .init(top: 0, left: 20, bottom: 15, right: 0)
            titleEdgeInsets = .init(top: 50, left: -40, bottom: 0, right: 0)
        }
    }
}
