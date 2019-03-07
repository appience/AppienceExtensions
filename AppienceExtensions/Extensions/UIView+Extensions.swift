//
//  UIView+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UIView {

    func roundedCorners(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func rounded(corners:UIRectCorner, withRadius radius:CGFloat) {
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        maskLayer.frame = self.bounds
        self.layer.mask = maskLayer
    }
    
    
    func makeCircle() {
        let radius:CGFloat = self.frame.width/2.0
        self.roundedCorners(radius)
    }
    
    func makeRoundedVerticalEdges() {
        let radius:CGFloat = self.frame.height/2
        self.roundedCorners(radius)
    }
    
    func shake() {
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.4
        animation.values = [-4.0, 4.0, -3.0, 3.0, -2.0, 2.0, 0.0 ]
        layer.add(animation, forKey: "shake")
    }
    
    class func loadFromNib<T : UIView>() -> T {
        let nibs = Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)
        return nibs![0] as! T
    }
    
    var allSubViews : [UIView] {
        var array = [self.subviews].flatMap {$0}
        array.forEach { array.append(contentsOf: $0.allSubViews) }
        return array
    }
    
    fileprivate var bezierPathIdentifier:String { return "bezierPathBorderLayer" }
    
    fileprivate var bezierPathBorder:CAShapeLayer? {
        return (self.layer.sublayers?.filter({ (layer) -> Bool in
            return layer.name == self.bezierPathIdentifier && (layer as? CAShapeLayer) != nil
        }) as? [CAShapeLayer])?.first
    }
    
    func bezierPathBorder(_ color:UIColor = .white, width:CGFloat = 1.0) {
        
        var border = bezierPathBorder
        let path = UIBezierPath(roundedRect: bounds, cornerRadius: layer.cornerRadius)
        let mask = CAShapeLayer()
        mask.frame = bounds
        mask.path = path.cgPath
        self.layer.mask = mask
        
        if (border == nil) {
            border = CAShapeLayer()
            border!.name = bezierPathIdentifier
            self.layer.addSublayer(border!)
        }
        
        border!.frame = bounds
        let pathUsingCorrectInsetIfAny = UIBezierPath(roundedRect: border!.bounds, cornerRadius: layer.cornerRadius)
        
        border!.path = pathUsingCorrectInsetIfAny.cgPath
        border!.fillColor = UIColor.clear.cgColor
        border!.strokeColor = color.cgColor
        border!.lineWidth = width * 2
    }
    
    func removeBezierPathBorder() {
        layer.mask = nil
        bezierPathBorder?.removeFromSuperlayer()
    }
}
