//
//  MainCoordinator.swift
//  CustomUIElements
//
//  Created by Vinicius Santos Ricci on 04/06/20.
//  Copyright © 2020 Vinicius Santos Ricci. All rights reserved.
//

import UIKit

public protocol Coordinator {
    func start()
}

public class MainCoordinator: NSObject, Coordinator {
    
    var navigationController: UINavigationController
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public var rootViewController: UIViewController {
        return navigationController
    }
    
    
    public func start() {
        let testVC = TESTViewController.instantiate()
        self.navigationController.pushViewController(testVC, animated: true)
//        if #available(iOS 13.0, *) {
//            if let testVC = UIStoryboard(name: "Main", bundle: Bundle(for: TESTViewController.self)).instantiateViewController(identifier: "TESTViewController") as? TESTViewController {
//                testVC.title = "RICCI"
//                testVC.view.backgroundColor = .blue
//                self.navigation.present(testVC, animated: true, completion: nil)
//            }
//        } else {
//            // Fallback on earlier versions
//        }
       
    }
}
