//
//  UITableView+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UITableView {
    func registerNib<T: UITableViewCell>(_: T.Type) {
        let stringRepresenation:String = String(describing: T.self)
        self.register(UINib(nibName: stringRepresenation, bundle: nil), forCellReuseIdentifier: T.identifier())
    }
    
    func dequeueCell<T:UITableViewCell>(_: T.Type, forIndexPath indexPath:IndexPath) -> T {
        return dequeueReusableCell(withIdentifier: T.identifier(), for: indexPath) as! T
    }
}