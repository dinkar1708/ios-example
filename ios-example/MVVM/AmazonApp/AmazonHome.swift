//
//  HomeModel.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/12/27.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import Foundation

class AmazonHome {
    let name : String!
    let image : String!
    let price : Float!

    init(name: String, image : String, price : Float) {
        self.name = name
        self.image = image
        self.price = price
    }
}
