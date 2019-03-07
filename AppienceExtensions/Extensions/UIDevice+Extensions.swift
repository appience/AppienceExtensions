//
//  UIDevice+Extensions.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 06/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

extension UIDevice {
    
    enum ScreenType: String {
        case iPhone4
        case iPhone5
        case iPhone6
        case iPhone6Plus
        case iPhoneX
        case Unknown
    }
    
    var screenType: ScreenType {
        guard iPhone else { return .Unknown}
        
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhone4
        case 1136:
            return .iPhone5
        case 1334:
            return .iPhone6
        case 2208:
            return .iPhone6Plus
        case 2436:
            return .iPhoneX
        default:
            return .Unknown
        }
    }
    
    var iPhone: Bool {
        return UIDevice().userInterfaceIdiom == .phone
    }
    
    var iPhone4: Bool {
        return screenType == .iPhone4
    }
    
    var iPhone5: Bool {
        return screenType == .iPhone5
    }
    
    var iPhonePlus: Bool {
        return screenType == .iPhone6Plus
    }
    
    var iPhoneX: Bool {
        return screenType == .iPhoneX
    }
}

