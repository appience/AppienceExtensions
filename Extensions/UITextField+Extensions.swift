//
//  UITextField+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UITextField {
    
    /// Removes UITextField borders
    func setNoBorder() {
        self.borderStyle = .none
        self.layer.backgroundColor = UIColor.clear.cgColor
    }
}
