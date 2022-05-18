//
//  UITextField+.swift
//  Instagram
//
//  Created by Alim Kuprianov on 14.03.2022.
//

import UIKit

extension UITextField {
    func inputStyle(placeholder: String?, returnKeyType: UIReturnKeyType = .default) {
        self.placeholder = placeholder
        self.returnKeyType = returnKeyType
        borderStyle = .roundedRect
        backgroundColor = LoginRegistrationConstants.Colors.textFieldBackground
        font = .systemFont(ofSize: LoginRegistrationConstants.Metrics.textFieldFontSize)
        autocorrectionType = .no
        autocapitalizationType = .none
    }
}
