//
//  Manager.swift
//  CustomUIElements
//
//  Created by Vinicius Santos Ricci on 04/06/20.
//  Copyright © 2020 Vinicius Santos Ricci. All rights reserved.
//

import UIKit

public class Manager {
    public static let shared = Manager()

    
    public func flowOne(navi: UINavigationController) {
        let mainCoordinator = MainCoordinator(navigationController: navi)
        mainCoordinator.start()
    }
}
