//
//  CustomView.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import Foundation
import UIKit

class CustomView: UIView {
  //initWithFrame to init view from code
  override init(frame: CGRect) {
    super.init(frame: frame)
    print("CustomView init view....frame: CGRect....")
    setupView()
  }
  
  //initWithCode to init view from xib or storyboard
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    print("CustomView init view....coder aDecoder: NSCoder....")
    setupView()
  }
  
  //common func to init our view
  private func setupView() {
    print("setup View function....")
    backgroundColor = .red
  }
}

