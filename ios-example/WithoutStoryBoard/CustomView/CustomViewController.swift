//
//  CustomViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class CustomVCViewController: UIViewController {
    var safeArea: UILayoutGuide!
    let view2 = CustomView2()

    lazy var titleLabel: UILabel = {
           let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
           label.font = .boldSystemFont(ofSize: 16)
            label.text = "This is label"
            label.center = CGPoint(x: 260, y: 384)
            label.textAlignment = NSTextAlignment.center
           return label
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        safeArea = view.layoutMarginsGuide

        // Do any additional setup after loading the view.
        setUI()
    }
    
    func setUI() {

        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        label.center = CGPoint(x: 160, y: 284)
        label.textAlignment = NSTextAlignment.center
        label.text = "I'm a test label"
        self.view.addSubview(label)
                label.transform = CGAffineTransform(rotationAngle: 90)
        

        self.view.addSubview(titleLabel)

        //create view
//        let view = CustomView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//        self.view.addSubview(view)
        // setting up position
//        setupConst(v:view)
        // create another view
        view2.setupViews()
//        self.view2.transform = CGAffineTransform(rotationAngle: 90)
//        self.view2.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))

        self.view.addSubview(view2)

        
//        let view1 = UIView.init(frame: CGRect.init(origin: self.view.center, size: CGSize.init(width: 100, height: 100)))
//              view.backgroundColor = UIColor.black
//              self.view.addSubview(view1)

    }
    
    func setupConst(v:UIView){
        v.translatesAutoresizingMaskIntoConstraints = false
        v.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        v.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        v.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        v.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
    }
    
    override func loadView() {
        super.loadView()
       
//        UIView.animate(withDuration: 8.5, delay: 4, animations: {
//            print("done...")
//            self.view2.alpha = 1
//        })
        
//        UIView.animate(withDuration: 0.3, delay: 1.7, animations: {
//            self.view2.alpha = 1
//        }) { _ in
//            print("done..ffffff.")
//
//        }
//
        
//        var transform = self.view.transform
//          transform = transform.rotated(by: 90)
//        self.view2.transform = transform

//        self.view2.transform = CGAffineTransform(rotationAngle: 90)

        UIView.animate(withDuration: 10.3, delay: 4.7, animations: {
            print("done..fffffffffdsfdsfff.")
            self.titleLabel.transform = CGAffineTransform(rotationAngle: 90)

        }, completion:{ _ in
            print("done..fffffffffffffffds44f.")
//            self.titleLabel.transform = CGAffineTransform(rotationAngle: 90)
        })
        
      
        
//        UIView.animate(withDuration: 2, animations: {
//            view1.transform = transform
//        }) { (completed) in
//
//            transform = CGAffineTransform.identity
//            UIView.animate(withDuration: 2, delay: 1, options: [], animations: {
//                view1.transform = transform
//            }, completion: nil)
//        }
        

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
