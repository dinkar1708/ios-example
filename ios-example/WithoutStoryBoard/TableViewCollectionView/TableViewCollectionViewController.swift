//
//  TableViewCollectionViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/02/03.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

protocol ListItemTapProtocal : class {
    func tapOnTrackItem() -> String
}

class TableViewCollectionViewController: UIViewController, ListItemTapProtocal {
    func tapOnTrackItem() -> String {
        return  ""
    }
    
    var categories = ["Cat1", "Cat2", "Cat3", "Cat4", "Cat5", "Cat6"]
    var tableView1: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        tableView1.delegate = self
        tableView1.dataSource = self
        tableView1.register(MyCollectionView.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(tableView1)
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

extension TableViewCollectionViewController : UITableViewDelegate { }

extension TableViewCollectionViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print("title for header")
        print(categories[section])
        return categories[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        print("num of sec")
        print(categories.count)
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Table view row............................................")
        //        print(indexPath.row)
        
        print(indexPath[0])
        //        print(indexPath[1])
        
        let cell:MyCollectionView = (tableView.dequeueReusableCell(withIdentifier: "cell") as! MyCollectionView?)!
        
        var models = [DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1"), DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1")]
        
        if(indexPath[0]==0){
            models = [DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1")]
        }
        else if(indexPath[0]==1){
            models =  [DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1"), DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1"), DataModel(imageUrl: "apple")]
        }else  if(indexPath[0]==2){
            models =  [DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1"), DataModel(imageUrl: "apple")]
        }
        else  if(indexPath[1]==3){
            [DataModel(imageUrl: "apple"), DataModel(imageUrl: "apple1")]
        }
        
        cell.bindJobs(models: models)
        
        cell.delegate = self
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
            // height for row 0 - 160
        case 0 :
            return 360
        default:
            // height for other rows
            return 200
            //        return UITableView.automaticDimension
        }
    }
    
    //    customize header section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        
        returnedView.backgroundColor = .black
        
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        
        label.text = categories[section]
        returnedView.addSubview(label)
        
        return returnedView
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section)")
        print("row: \(indexPath.row)")
    }
}

