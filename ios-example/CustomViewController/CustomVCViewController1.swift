//
//  CustomViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/26.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit
import Cartography

class CustomVCViewController1: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    var childViewController1 : Child1ViewController!
    var childViewController2 : Child2ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childViewController1 = UIStoryboard(name: "Child1", bundle: nil).instantiateViewController(withIdentifier: "Child1ViewController") as? Child1ViewController
        
        
        childViewController2 = (UIStoryboard(name: "Child2", bundle: nil).instantiateViewController(withIdentifier: "Child2ViewController") as! Child2ViewController)
        
        removeChildVC(vc: childViewController1)
        addChildVC(vc: childViewController1)
        updateConstraints(vc:childViewController1)
    }
    
    @IBAction func addChild1Action(_ sender: Any) {
        
        
        removeChildVC(vc: childViewController1)
        addChildVC(vc: childViewController1)
        updateConstraints(vc:childViewController1)

        // check childs, child should not again and again, only add child once
        print(self.children.count)
        print("count...")
        print(self.containerView.subviews.count)
    }
    
    @IBAction func addChild2Action(_ sender: Any) {
        
        // check childs, child should not again and again, only add child once
        print(self.children.count)
        print("count...")
        print(self.containerView.subviews.count)
        
        removeChildVC(vc: childViewController2)
    
        addChildVC(vc: childViewController2)
        updateConstraints(vc:childViewController2)

    }

    func updateConstraints(vc:UIViewController) {
//        constrain(view1, view2) { view1, view2 in
        // view 2 is child in this case
        constrain(vc.view, view) { child, parent in
            // change the view position in custom vc
            child.left == parent.left + 25
            child.right == parent.right - 25
            child.bottom == parent.bottom - 10
            child.height == self.containerView.bounds.height
        }
        
        // change the frame of custom vc
//        self.view.frame.origin.x += (20)

        self.view.layoutIfNeeded()
    }
    
    func addChildVC(vc : UIViewController) {
        // add as child
        self.addChild(vc)
        // add child view in this controller
        self.containerView.addSubview(vc.view)
        // move child view controller to parent, parent is self ie. this view controller
        vc.didMove(toParent: self)
    }
    
    func removeChildVC(vc : UIViewController) {
        if vc.view.window != nil {
            vc.willMove(toParent: self)
            vc.view.removeFromSuperview()
            vc.removeFromParent()
        }
    }
}
