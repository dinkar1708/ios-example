//
//  AmazonHomeController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/12/27.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class AmazonHomeController: UIViewController {
    
    let models: [HomeModel] = [HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover")
    ,
    HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"),HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "Tom&Jerry", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "iphone_cover Potter", cover : "iphone_cover", previewCover : "iphone_cover"), HomeModel(name : "LEGO Super Mario", cover : "iphone_cover", previewCover : "iphone_cover")]
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var priviewImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.minimumInteritemSpacing = 30
    }
}

extension AmazonHomeController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ view: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? HomeCell
        let model = self.models[indexPath.row]
        cell?.name.text = model.name
        print("model name")
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
        self.priviewImageView.image = UIImage(named: model
                                                .previewCover)
    }

//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: self.view.frame.width , height: collectionView.bounds.height)
//    }
}
