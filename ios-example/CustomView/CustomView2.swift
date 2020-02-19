//
//  CustomView.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import Foundation
import UIKit

class CustomView2: UIView {
    
     func setupViews() {
        print("setup Views function....")
        backgroundColor = .red
        var image: UIImage = UIImage(named: "apple")!
        let imageView = UIImageView(image: image)
        self.addSubview(imageView)
           }
}

