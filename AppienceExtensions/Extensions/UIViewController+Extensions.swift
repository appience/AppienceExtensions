//
//  UIViewController+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

public extension UIViewController {

    static func createInstanceFromStoryboard<T:UIViewController>(identifier:String? = nil, storyBoardName:String? = nil) -> T {
        let className:String = String(describing: T.self)
        let sbIdentifier:String = identifier ?? className
        let sbName:String = storyBoardName ?? className
        let instance:T = UIStoryboard.viewControllerWithIdentifier(sbIdentifier, storyBoardName: sbName) as! T
        return instance
    }
    
    static func createinstanceFromXIB<T:UIViewController>(nibName:String?) -> T {
        let className:String = String(describing: T.self)
        let instance:T = T(nibName: nibName ?? className, bundle: nil)
        return instance
    }
    
    func add(_ child: UIViewController, frame: CGRect? = nil, autolayout:Bool = false) {
        addChild(child)
        
        if let frame = frame {
            child.view.frame = frame
        }
        
        view.addSubview(child.view)
        child.didMove(toParent: self)
    
        if autolayout {
            child.view.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
            child.view.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
            child.view.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
            child.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        }
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
