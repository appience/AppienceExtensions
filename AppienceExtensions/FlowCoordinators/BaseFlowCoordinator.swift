//
//  BaseFlowCoordinator.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 05/03/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit
public struct FlowConfigure {
    
    enum FlowType {
        case Main
        case Navigation
    }
    
    let window: UIWindow?
    let navigationController: UINavigationController?
    
    func flowType() -> FlowType? {
        if window != nil { return .Main }
        if navigationController != nil { return .Navigation }
        return nil
    }
}

open class BaseFlowCoordinator {
    
    let configure:FlowConfigure
    
    init(configure : FlowConfigure) {
        self.configure = configure
    }
    
    func start() {
        
    }
}
