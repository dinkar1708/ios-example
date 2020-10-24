//
//  SignUpViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/24.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var firstNameConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameConstraint.constant = 10
    }

}
