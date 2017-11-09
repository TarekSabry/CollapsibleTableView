//
//  UIColorExtensions.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hex:Int, alpha:CGFloat = 1.0) {
        self.init(
            red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
            blue:  CGFloat((hex & 0x0000FF) >> 0)  / 255.0,
            alpha: alpha
        )
    }
}
