//
//  UILabel+.swift
//  Instagram
//
//  Created by Alim Kuprianov on 14.03.2022.
//

import UIKit

extension UILabel {
    func warningStyle() {
        font = .systemFont(ofSize: LoginRegistrationConstants.Metrics.warningLabelFontSize)
        textColor = LoginRegistrationConstants.Colors.warningTextColor
    }
}
