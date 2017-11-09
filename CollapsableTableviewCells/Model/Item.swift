//
//  Item.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import UIKit

public struct Item {
    var name: String
    var detail: String
    var image : UIImage
    
    public init(name: String, detail: String,image : UIImage) {
        self.name = name
        self.detail = detail
        self.image = image
    }
}
