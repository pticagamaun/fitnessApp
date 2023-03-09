//
//  UIViewController + Extension.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 05.03.2023.
//

import UIKit

extension UIViewController {
    
    func simpleAlert(title: String, message: String?, completionHandler: (() -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completionHandler?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func simpleAlertTwo(title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
