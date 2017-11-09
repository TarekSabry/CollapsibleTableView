//
//  CollapsibleTableViewHeader.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import UIKit

class CollapsibleTableViewHeader: UITableViewHeaderFooterView,UIGestureRecognizerDelegate {

    @IBOutlet weak var arrowLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    var delegate: CollapsibleTableViewHeaderDelegate?
    var section: Int = 0

    override func awakeFromNib() {
        super.awakeFromNib()
        setupGestureRecognizer()
    }
    
    
    func configure(_ sectionName : String) {
        titleLabel.text = sectionName
        arrowLabel.text = ">"
    }
    
    func setupGestureRecognizer() {
        let tapR = UITapGestureRecognizer(target: self, action: #selector(tapHeader(_:)))
        tapR.delegate = self
        tapR.numberOfTapsRequired = 1
        tapR.numberOfTouchesRequired = 1
        addGestureRecognizer(tapR)
    }
    
    func tapHeader(_ gestureRecognizer: UITapGestureRecognizer) {

        guard let cell = gestureRecognizer.view as? CollapsibleTableViewHeader else {
            return
        }
        
        delegate?.toggleSection(self, section: cell.section)
    }
    
    func setCollapsed(_ collapsed: Bool) {
        arrowLabel.rotate(collapsed ? 0.0 : .pi / 2)
    }
    
    
    
}

