//
//  CustomViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    var safeArea: UILayoutGuide!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        safeArea = view.layoutMarginsGuide

        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI() {

        //create view
        let view = CustomView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        self.view.addSubview(view)
        // setting up position
        setupConst(v:view)

        // create another view
        let view2 = CustomView2()
        view2.setupViews()
        self.view.addSubview(view2)
    }
    
    func setupConst(v:UIView){
        v.translatesAutoresizingMaskIntoConstraints = false
        v.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        v.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        v.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        v.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
