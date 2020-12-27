//
//  CollectionViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/31.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class NetflixMovieController: UIViewController {
    
    let models: [MovieModel] = [MovieModel(name : "Tom&Jerry", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "Harry Potter", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "LEGO Super Mario", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "Tom&Jerry", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "Harry Potter", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "LEGO Super Mario", cover : "harry", previewCover : "harry_preview")
    ,
    MovieModel(name : "Tom&Jerry", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "Harry Potter", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "LEGO Super Mario", cover : "harry", previewCover : "harry_preview")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var priviewImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
//        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        print(view.bounds.size.width)
        print(view.bounds.size.height)
        //        print(self.collectionView.widestCellWidth)
        // collection view min spacing in size inspector 20, change using bellow
//                layout?.minimumInteritemSpacing = 50
    }
    
}


extension NetflixMovieController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ view: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? MoviewCell
        let model = self.models[indexPath.row]
        cell?.name.text = model.name
        cell?.cover.image = UIImage(named: model.cover)
        
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, shouldDeselectItemAt indexPath: IndexPath) -> Bool {
        if let selectedItems = collectionView.indexPathsForSelectedItems {
            if selectedItems.contains(indexPath) {
                collectionView.deselectItem(at: indexPath, animated: true)
                return false
            }
        }
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let model = self.models[indexPath.row]
        print("Selected... \(indexPath.row)")
        self.priviewImageView.image = UIImage(named: model.previewCover)
    }
    
}

//extension NetflixMovieController: UICollectionViewDelegateFlowLayout {
//    
//    // this is same as section inset set from collection view property in size inspector
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        
//        let cellWidth =  60
//        let cellSpacing = 20
//        let cellCount = self.models.count
//        let totalCellWidth = cellWidth * cellCount
//        print("Total totalCellWidth....180")
//        print(totalCellWidth)
//        let totalSpacingWidth = cellSpacing * (cellCount - 1)
//        print("Total spacing width....40")
//        print(totalSpacingWidth)
//        print("Total cell space")
//        let cellsSpace = totalCellWidth + totalSpacingWidth
//        print("cellsSpace--------")
//        print(cellsSpace)
//
//        let leftInset = (collectionView.frame.width - CGFloat(cellsSpace)) / 2
//        print("edge \(leftInset)")
//        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: leftInset)
//    }
//    
//}

//extension UICollectionView {
//    var widestCellWidth: CGFloat {
//        let insets = contentInset.left + contentInset.right
//        return bounds.width - insets
//    }
//}
