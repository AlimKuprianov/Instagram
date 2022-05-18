//
//  CustomViewController.swift
//  Instagram
//
//  Created by Alim Kuprianov on 17.03.2022.
//

import UIKit

class CustomViewController<CustomView: UIView>: UIViewController {
    // MARK: Properties
    
    internal var customView: CustomView? {
        guard let view = view as? CustomView else {
            print("view is not a CustomView instance")
            
            return nil
        }
        
        return view
    }
    
    // MARK: Lifecycle
    
    override func loadView() {
        view = CustomView()
    }
}
