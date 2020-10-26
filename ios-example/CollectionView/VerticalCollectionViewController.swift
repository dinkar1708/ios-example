//
//  CollectionViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

/**
 by default is it like grid
 layout.scrollDirection = UICollectionView.ScrollDirection.vertical
 -vertical scroll, draw each sections vertically,
 drawing the sections child horizontally, when device width end next child row is drawn from next line/ start of device width.
 
 Note - Horizontal-CollectionView.png and Horizontal-CollectionView2.png  - are drawn just chnaging the
 layout.scrollDirection = UICollectionView.ScrollDirection.vertical to
 layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
 -horizontal scroll, draw each sections horizontally,
 drawing the sections child vertically, when device height end next child row is drawn from top of device height.


 
 */
class VerticalCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUI()
    }
    
    func setUI() {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.vertical
        
        layout.sectionInset = UIEdgeInsets(top: 120, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        myCollectionView.backgroundColor = UIColor.white
        
        let bgImage = UIImageView();
        bgImage.image = UIImage(named: "apple1");
        bgImage.contentMode = .scaleToFill
        
        myCollectionView.backgroundView = bgImage
        
        self.view.addSubview(myCollectionView)
    }

    /**
        if dont override it - default only one section is made
     */
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // make 5 sections
        return 5
    }
  
    /**
      this will  created new childs(12 childs in each section) for each section numberOfSections
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // each section has 13 childs
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cellForItemAt ")
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        myCell.backgroundColor = UIColor.blue
        return myCell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        print("User tapped on item \(indexPath.row)")
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
