//
//  InstrinsicContentSizeViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/24.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class BasicPlacementToCorners1: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton! {
        didSet {
            saveButton.layer.cornerRadius = 10
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
