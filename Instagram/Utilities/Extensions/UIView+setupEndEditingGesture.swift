//
//  UIView+setupEndEditingGesture.swift
//  Instagram
//
//  Created by Alim Kuprianov on 21.03.2022.
//

import UIKit

extension UIView {
    func setupEndEditingGesture(cancelsTouchesInView: Bool = true) {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        
        tapGestureRecognizer.cancelsTouchesInView = cancelsTouchesInView
        
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func dismissKeyboard() {
        endEditing(true)
    }
}
