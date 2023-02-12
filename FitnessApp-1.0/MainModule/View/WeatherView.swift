//
//  WeatherView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 12.02.2023.
//

import UIKit

final class WeatherView: UIView {
    
    private let weatherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sun")
        return image
    }()
    
    private let weatherTitleLabel = UILabel(text: "Sunny",
                                            textColor: .specialTextColor, font: .robotoMedium18)
    private let weatherDescriptionLabel = UILabel(text: "Nice weather to workout outside!",
                                                  textColor: .systemGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 15
        addView(weatherImage)
        addView(weatherTitleLabel)
        addView(weatherDescriptionLabel)
        dropShadow()
    }
}

extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            weatherImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherImage.heightAnchor.constraint(equalToConstant: 60),
            weatherImage.widthAnchor.constraint(equalToConstant: 60),
            
            weatherTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            weatherTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weatherTitleLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: -5),
            weatherTitleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherTitleLabel.bottomAnchor, constant: 3),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: -5),
            weatherDescriptionLabel.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
