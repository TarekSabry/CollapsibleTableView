//
//  MainVCCollapsibleTableViewHeaderDelegate.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import Foundation


extension MainVC : CollapsibleTableViewHeaderDelegate {
    
    func toggleSection(_ header: CollapsibleTableViewHeader, section: Int) {
        let collapsed = !sections[section].collapsed
        sections[section].collapsed = collapsed
        header.setCollapsed(collapsed)
        collapsableTableView.reloadSections(IndexSet(integer: section), with: .automatic)
    }
}
