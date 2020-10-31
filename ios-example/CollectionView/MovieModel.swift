//
//  CollectionViewModel.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/31.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import Foundation

class MovieModel {
    let name : String!
    let cover : String!
    let previewCover : String!

    init(name: String, cover : String, previewCover : String) {
        self.name = name
        self.cover = cover
        self.previewCover = previewCover
    }
}
