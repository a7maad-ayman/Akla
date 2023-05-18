//
//  UIButton+Extension.swift
//  Akla
//
//  Created by Ahmad Ayman Mansour on 18/05/2023.
//

import UIKit

//MARK: - StyledButton (UIButton Protocol)
protocol StyledButton {
    func applyButtonStyle (backgroundColor: UIColor, title: String, textColor: UIColor?)
}


// MARK: - UIButton Extension for StyledButton
extension UIButton: StyledButton {
    func applyButtonStyle(backgroundColor: UIColor, title: String, textColor: UIColor?) {

        if let textColor = textColor {
            titleLabel?.textColor = textColor
        } else {
            titleLabel?.textColor = .white
        }
        
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
       
    }
}
