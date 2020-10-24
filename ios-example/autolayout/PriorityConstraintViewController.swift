//
//  PriorityConstraintViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/24.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class PriorityConstraintViewController: UIViewController {
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var middleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topView.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
        middleView.removeFromSuperview()
    }
        
}
