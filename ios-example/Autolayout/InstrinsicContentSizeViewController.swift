//
//  InstrinsicContentSizeViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/24.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class InstrinsicContentSizeViewController: UIViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func click(_ sender: UIButton) {
        
        if(Int.random(in: 0...1) == 0){
            sender.setTitle("Button", for: .normal)
        }else{
            sender.setTitle("Instrinsic Content allow to grow me, if size of button fixed i will not grow", for: .normal)
        }
    }
}
