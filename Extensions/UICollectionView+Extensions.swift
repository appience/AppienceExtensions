//
//  UICollectionView+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UICollectionView {
    func registerNib<T: UICollectionViewCell>(_: T.Type) {
        let stringRepresenation:String = String(describing: T.self)
        self.register(UINib(nibName: stringRepresenation, bundle: nil), forCellWithReuseIdentifier: T.identifier())
    }
    
    func dequeueCell<T:UICollectionViewCell>(_: T.Type, forIndexPath indexPath:IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }
    
    func registerHeaderNib<T: UICollectionReusableView>(_: T.Type) {
        let stringRepresenation:String = String(describing: T.self)
        self.register(UINib(nibName: stringRepresenation, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier())
    }
    
    func registerFooterNib<T: UICollectionReusableView>(_: T.Type) {
        let stringRepresentation:String = String(describing: T.self)
        self.register(UINib(nibName: stringRepresentation, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier())
    }
    
    func dequeueHeader<T: UICollectionReusableView>(_: T.Type, forIndexPath indexPath:IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }
    
    func dequeueFooter<T: UICollectionReusableView>(_: T.Type, forIndexPath indexPath:IndexPath) -> T {
        return dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: T.identifier(), for: indexPath) as! T
    }

}
