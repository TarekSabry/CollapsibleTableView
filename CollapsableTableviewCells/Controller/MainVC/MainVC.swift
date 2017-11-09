//
//  ViewController.swift
//  CollapsableTableviewCells
//
//  Created by Vortex on 11/9/17.
//  Copyright © 2017 Vortex. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var collapsableTableView: UITableView!
    var sections = sectionsData
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerNibs()
    }
    
    func setupTableView() {
        collapsableTableView.estimatedRowHeight = 44.0
        collapsableTableView.rowHeight = UITableViewAutomaticDimension
        collapsableTableView.dataSource = self
        collapsableTableView.delegate = self
    }
    
    func registerNibs() {
        var nib = UINib(nibName: "CollapsibleTableViewCell", bundle: nil)
        collapsableTableView.register(nib, forCellReuseIdentifier: "cell")
        nib = UINib(nibName: "CollapsibleTableViewHeader", bundle: nil)
        collapsableTableView.register(nib, forHeaderFooterViewReuseIdentifier: "header")
    }
}

