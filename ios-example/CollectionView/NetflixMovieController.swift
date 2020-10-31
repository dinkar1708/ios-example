//
//  CollectionViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/10/31.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class NetflixMovieController: UIViewController {

    let models: [MovieModel] = [MovieModel(name : "Tom&Jerry", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "Harry Potter", cover : "harry", previewCover : "harry_preview"), MovieModel(name : "LEGO Super Mario", cover : "harry", previewCover : "harry_preview")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var priviewImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        print(view.bounds.size.width)
        print(view.bounds.size.height)
//        print(self.collectionView.widestCellWidth)
        // collection view min spacing in size inspector 20, change using bellow
//        layout?.minimumInteritemSpacing = 50
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
    
    
//
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        let CellWidth =  60
//        let CellSpacing = 4
//        let CellCount = self.models.count
//        let totalCellWidth = CellWidth * CellCount
//        let totalSpacingWidth = CellSpacing * (CellCount - 1)
//        let leftInset = (self.collectionView.widestCellWidth - CGFloat(totalCellWidth + totalSpacingWidth)) / 2
//        let rightInset = leftInset
//        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
//    }
    
}

//extension NetflixMovieController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//        let cellWidth: CGFloat = 60.0
//        let numberOfCells = floor(view.frame.size.width / cellWidth)
//        let edgeInsets = (view.frame.size.width - (numberOfCells * cellWidth)) / (numberOfCells + 1)
//        print("edge \(edgeInsets)")
//        return UIEdgeInsets(top: 0, left: 50, bottom: 0, right: 50)
//    }
//
// }

//extension UICollectionView {
//    var widestCellWidth: CGFloat {
//        let insets = contentInset.left + contentInset.right
//        return bounds.width - insets
//    }
//}
