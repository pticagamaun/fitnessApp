//
//  SliderView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 19.02.2023.
//
import UIKit

protocol SliderViewProtocol: AnyObject {
    func sliderValue()
}

final class SliderView: UIView {
    
    weak var sliderViewDelegate: SliderViewProtocol?
    private let nameLabel = UILabel(text: "Name",
                                    textColor: .specialBlack,
                                    font: .robotoMedium20)
    private let numberLabel = UILabel(text: "0",
                                      textColor: .specialBlack,
                                      font: .robotoBold22)
    private lazy var slider = GreenSlider(self, selector: #selector(sliderChangeValue))
    private var stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    convenience init(name: String, minValue: Float, maxValue: Float) {
        self.init(frame: .zero)
        nameLabel.text = name
        slider.minimumValue = minValue
        slider.maximumValue = maxValue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderChangeValue), for: .valueChanged)
        let labelsStackView = UIStackView([nameLabel, numberLabel], spacing: 10, axis: .horizontal)
        labelsStackView.distribution = .equalSpacing
        stackView = UIStackView([labelsStackView, slider], spacing: 10, axis: .vertical)
        addView(stackView)
    }
    
    @objc private func sliderChangeValue() {
        numberLabel.text = String(Int(slider.value))
        print(String(Int(slider.value)))
    }
}

extension SliderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
