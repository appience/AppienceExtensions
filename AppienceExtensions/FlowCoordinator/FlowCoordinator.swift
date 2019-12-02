//
//  FlowCoordinator.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 02/12/2019.
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
    
    func whichFlowIam() -> FlowType? {
        if window != nil { return .Main }
        if navigationController != nil { return .Navigation }
        return nil
    }
}

public protocol FlowCoordinator {
    
    var configure:FlowConfigure {get}
    
    init(configure : FlowConfigure)
    
    func start()
}
