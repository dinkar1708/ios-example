//
//  Child1ViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/26.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class Child1ViewController: UIViewController {

    @IBOutlet weak var uiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let img = UIImage(named: "apple")!        
        self.uiView.backgroundColor = UIColor(patternImage: img)
    }
}
