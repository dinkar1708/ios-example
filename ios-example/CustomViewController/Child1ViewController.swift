//
//  Child1ViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/26.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class Child1ViewController: UIViewController {

    @IBOutlet weak var customSwitch: UISwitch! {
        didSet {
//            customSwitch.onTintColor = UIColor.blue
            // on state color
//            customSwitch.tintColor = UIColor.blue
//            customSwitch.thumbTintColor = UIColor.black
            // off state background is shown with thumb tint
//            customSwitch.backgroundColor = UIColor.red
            customSwitch.layer.cornerRadius = 16

//            customSwitch.onTintColor = UIColor.blue
//            customSwitch.tintColor = UIColor.red
//            customSwitch.thumbTintColor = UIColor.white
//            customSwitch.backgroundColor = UIColor.red
//            customSwitch.layer.cornerRadius = 16
        }
    }
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var uiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiView.layer.shadowOffset = CGSize(width: 10, height: 30)
        // HIGHER shadowOpacity NUMBER STRONGER THE VISIBILITY
        uiView.layer.shadowOpacity = 0.8
        uiView.layer.shadowRadius = 6.0
        uiView.layer.shadowColor = UIColor.blue.cgColor
        
//
//        let height : CGFloat  = 10
//        let width : CGFloat = 40
//        let shadowSize: CGFloat = 20

        let x = view2.frame.minX
        let y = view2.frame.minY
        print("x and y ")
        print(x)
        print(y)
        print(view2.frame)
        print(view2.bounds)
        let contactRect = CGRect(x: view2.frame.width, y: 0, width: 30, height: view2.frame.height)
        view2.layer.shadowPath = UIBezierPath(ovalIn: contactRect).cgPath
        view2.layer.shadowRadius = 4
        view2.layer.shadowOpacity = 0.7
    }
    @IBAction func changed(_ sender: UISwitch) {
        if sender.isOn {
            // thumb tint
            customSwitch.thumbTintColor = UIColor.black
//            // as a background
//            customSwitch.onTintColor = UIColor.yellow

        } else{
            // off state background is shown with thumb tint
            // thumb tint
            customSwitch.thumbTintColor = UIColor.systemPink
//            // as background
//            customSwitch.backgroundColor = UIColor.blue
        }
    }
}
