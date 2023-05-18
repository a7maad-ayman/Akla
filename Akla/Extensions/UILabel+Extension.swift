//
//  UILabel+Extension.swift
//  Akla
//
//  Created by Ahmad Ayman Mansour on 18/05/2023.
//

import UIKit

// MARK: - StyledLabel (UILabel Protocol)
protocol StyledLabel {
    func setTitle(_ title: String, textAlignment: NSTextAlignment?, fontSize: CGFloat?)
    func setBody(_ body: String, textAlignment: NSTextAlignment?)
}

// MARK: - UILabel Extension for StyledLabel
extension UILabel: StyledLabel {

    func setTitle(_ title: String, textAlignment: NSTextAlignment?, fontSize: CGFloat?) {

        if let fontSize = fontSize, let textAlignment = textAlignment {
            self.textAlignment = textAlignment
            self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        } else {
            self.textAlignment = .center
            self.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        }

        text = title
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
    }

    func setBody(_ body: String, textAlignment: NSTextAlignment?) {

        if let textAlignment = textAlignment {
            self.textAlignment = textAlignment
        } else {
            self.textAlignment = .center
        }

        text = body
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byWordWrapping
    }

}
