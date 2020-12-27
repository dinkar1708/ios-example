//
//  CollectionViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class MyCollectionView2: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let headerView = "header_view"
    let footerView = "footer_view"
    let specialView = "special_cell"

    let cellView = "cell"
    
    
    weak var delegate : ListItemTapProtocal?

    var models:[DataModel] = []
    
    func bindJobs(models:[DataModel]) {
        self.models = models
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
       setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(delegate: ListItemTapProtocal, title: String) {
        print("bind.....")
       self.delegate = delegate
       textLabel?.text = title
     }
    
    func setUI() {
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.vertical
        
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 450, height: 280)
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        // reusable identifier
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellView)
        // suply special kind of identifier
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerView)
        myCollectionView.register(UICollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerView)
        
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: specialView)

        
        myCollectionView.backgroundColor = UIColor.white
        
        self.addSubview(myCollectionView)
    }
    
    /**
     if dont override it - default only one section is made
     */
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 6
    }
    
    /**
     this will  created new childs(12 childs in each section) for each section numberOfSections
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    /**
     back ground for each box of collection view
     */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cellForItemAt ")
        
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellView, for: indexPath as IndexPath)
        myCell.backgroundColor = UIColor.blue
        return myCell
    }
    
    private func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        print("User tapped on item \(indexPath.row)")
    }
    
    // Important for footer and header height
    // MARK: - Footer
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: 10, height: 10)
    }
    // MARK: - Header
    /**
     Called each time - the total headers, 5 no of section called 5 times
     Asks the delegate for the size of the header view in the specified section.
     https://developer.apple.com/documentation/uikit/uicollectionviewdelegateflowlayout/1617702-collectionview?language=objc
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        print("size of header.....")
//        let headerWidth: CGFloat = collectionView.bounds.width
//        let headerHeight: CGFloat = 8
        return CGSize(width: 350, height: 450)
    }
    /**
     can set background on each header, footer, cell etc. any kind
     Asks your data source object to provide a supplementary view to display in the collection view.
     https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618037-collectionview?language=objc
     
     */
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        print("kind of supplementary element ")
        print(kind)
        let v = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerView, for: indexPath)
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            v.backgroundColor = UIColor.red
            break
        case UICollectionView.elementKindSectionFooter:
            v.backgroundColor = UIColor.red
            break
        default:
            v.backgroundColor = UIColor.brown
        }
        return v
        
    }
    
    // MARK: - Layout
    /**
     top, left, bottom and right margin of complete collection view
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 8, bottom: 0, right: 16)
        
    }
    /**
     sizeForItemAt - size for each cell
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let verticalRowCount = UIDevice.current.userInterfaceIdiom == .phone ? 2 : 4
//        let contentWidth: CGFloat = (collectionView.bounds.width - 32 - 8 * CGFloat(verticalRowCount - 1)) / CGFloat(verticalRowCount)
//        let contentHeight: CGFloat = (contentWidth + 10)
        
        _ = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerView, for: indexPath)
        //        print(v.reuseIdentifier.)
        return CGSize(width: 130, height: 260)
    }
    
    /**
     Asks the delegate for the spacing between successive rows or columns of a section.
     minimumLineSpacingForSectionAt - is the vertical padding
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    /**
     minimumInteritemSpacingForSectionAt  - is the horizontal padding
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
        
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
