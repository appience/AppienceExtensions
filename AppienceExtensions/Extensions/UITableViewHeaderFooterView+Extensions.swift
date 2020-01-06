//
//  UITableViewHeaderFooterView+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/01/2020.
//  Copyright © 2020 appience. All rights reserved.
//

import Foundation

extension UITableViewHeaderFooterView {
    class func identifier() -> String {
        return String(describing: self) + "Identifier"
    }
}
