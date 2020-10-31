//
//  PodUsagesViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/31.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit
import ViewAnimator

class PodUsagesViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    
    private let animations = [AnimationType.vector(CGVector(dx: 0, dy: 60))]

    override func viewDidLoad() {
        super.viewDidLoad()
  
        UIView.animate(views:[self.lable],
                       animations: animations,
                       delay: 0.5)
    }
}
