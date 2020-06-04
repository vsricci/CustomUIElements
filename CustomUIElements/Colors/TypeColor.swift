//
//  CustomColor.swift
//  CustomUIElements
//
//  Created by Vinicius Santos Ricci on 29/05/20.
//  Copyright © 2020 Vinicius Santos Ricci. All rights reserved.
//

import UIKit

extension UIColor {
    public func getTypeColor(_ typeColor: TypeColor) -> UIColor {
        switch typeColor {
        case .first:
            return UIColor.red
        case .second:
            return UIColor.green
        case .login:
            return UIColor.gray
        }
    }
}

public enum TypeColor: String {
    case first
    case second
    case login
}
