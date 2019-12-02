//
//  FlowCoordinator.swift
//  AppienceExtensions
//
//  Created by Jan Lipmann on 02/12/2019.
//  Copyright © 2019 Appience. All rights reserved.
//

import UIKit

public struct FlowConfigure {
    
    public enum FlowType {
        case Main
        case Navigation
    }
    
    public let window: UIWindow?
    public let navigationController: UINavigationController?
    
    public init(window:UIWindow?, navigationController:UINavigationController?) {
        self.window = window
        self.navigationController = navigationController
    }
    
    public func whichFlowIam() -> FlowType? {
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
