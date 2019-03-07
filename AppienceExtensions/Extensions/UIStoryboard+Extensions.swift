//
//  UIStoryBoard+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UIStoryboard {
    class func viewControllerWithIdentifier(_ identifier:String, storyBoardName:String) -> UIViewController {
        let storyboard:UIStoryboard = UIStoryboard(name: storyBoardName, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: identifier)
    }
}
