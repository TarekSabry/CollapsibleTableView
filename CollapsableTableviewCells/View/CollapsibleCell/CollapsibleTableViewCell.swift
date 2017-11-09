//
//  CollapsibleTableViewCell.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import UIKit

class CollapsibleTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupLabels()
        selectionStyle = .none
    }
    
    func setupLabels() {
        name.lineBreakMode = .byWordWrapping
        name.translatesAutoresizingMaskIntoConstraints = false
        name.numberOfLines = 0
        
        detailsLabel.lineBreakMode = .byWordWrapping
        detailsLabel.translatesAutoresizingMaskIntoConstraints = false
        detailsLabel.numberOfLines = 0
    }
    
    func configure(item : Item) {
        
         name.text = item.name
         detailsLabel.text = item.detail
         itemImage.image = item.image
        
    }
}
