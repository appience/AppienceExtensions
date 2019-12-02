//
//  UISearchBar+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

public extension UISearchBar {
    func getViewElements<T>(type: T.Type) -> [T]? {
        let svs = subviews.flatMap { $0.subviews }
        guard let element = (svs.filter { $0 is T }) as? [T] else { return nil }
        return element
    }
    
    func setTextFieldFont(font:UIFont) {
        if let textField = getViewElements(type: UITextField.self)?.first {
            textField.font = font
        }
    }
    
    func setTextFieldTextColor(color:UIColor) {
        if let textField = getViewElements(type: UITextField.self)?.first {
            textField.textColor = color
        }
    }
    
    func setPlaceholder(text:String, color:UIColor, font:UIFont) {
        self.placeholder = text
        if let textField = getViewElements(type: UITextField.self)?.first {
            let attributes = [NSAttributedString.Key.font : font, NSAttributedString.Key.foregroundColor : color]
            textField.attributedPlaceholder = NSAttributedString(string: text, attributes: attributes)
        }
    }
    
    func setTextFieldBackgroundColor(color: UIColor) {
        if let textField = getViewElements(type: UITextField.self)?.first {
            switch searchBarStyle {
            case .minimal:
                textField.layer.backgroundColor = color.cgColor
                textField.layer.cornerRadius = 6
                
            case .prominent, .default:
                textField.backgroundColor = color
            @unknown default:
                break
            }
        }
    }
}
