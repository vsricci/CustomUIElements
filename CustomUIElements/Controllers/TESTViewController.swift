//
//  TESTViewController.swift
//  CustomUIElements
//
//  Created by Vinicius Santos Ricci on 04/06/20.
//  Copyright © 2020 Vinicius Santos Ricci. All rights reserved.
//

import UIKit

public class TESTViewController: UIViewController, Storyboardable{

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "GitHub - VSRICCI"
        self.view.backgroundColor = .green
        // Do any additional setup after loading the view.
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = .black
    }
}
