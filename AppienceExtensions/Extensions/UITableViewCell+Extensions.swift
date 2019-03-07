//
//  UITableViewCell+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    class func identifier() -> String {
        return String(describing: self) + "Identifier"
    }
}
