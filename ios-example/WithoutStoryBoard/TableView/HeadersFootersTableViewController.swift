//
//  TableViewController2.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/30.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class HeadersFootersTableViewController: UITableViewController {
    var dataList = [[ "grilled and pan-fried dishes (yakimono 焼き物)",
                      "stewed/simmered/cooked/boiled dishes (nimono 煮物)",
                      "stir-fried dishes (itamemono 炒め物)",
                      "steamed dishes (mushimono 蒸し物)",
                      "deep-fried dishes (agemono 揚げ物)",
                      "sliced raw fish (sashimi 刺身)",
                      "soups (suimono 吸い物 and shirumono 汁物)",
                      "pickled/salted vegetables (tsukemono 漬け物)",
                      "dishes dressed with various kinds of sauce (aemono 和え物)",
                      "vinegared dishes (su-no-mono 酢の物)",
                      "1delicacies, food of delicate flavor (chinmi 珍味)"],[ "Japan", "India", "US", "Canada", "Indonesia", "Australia",
                                                                                "Austria",
                                                                                "Azerbaijan",
                                                                                "Bahamas (the)",
                                                                                "Bahrain",
                                                                                "Bangladesh",
                                                                                "Barbados",
                                                                                "Belarus",
                                                                                "Belgium",
                                                                                "Belize",
                                                                                "Benin",
                                                                                "Bermuda",
                                                                                "Bhutan",
                                                                                "Bolivia (Plurinational State of)",
                                                                                "Bonaire, Sint Eustatius and Saba",
                                                                                "Bosnia and Herzegovina",
                                                                                "Botswana",
                                                                                "Bouvet Island",
                                                                                "Brazil",]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            return  dataList[0].count
        }else if(section == 1){
            return  dataList[1].count
        }
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        print("Index Path")
        print(indexPath)
        cell.textLabel?.text = dataList[indexPath.section][indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = dataList[indexPath.section][indexPath.row]
        print("Index Path")
        print(indexPath)
        print("Tapped data "+data)
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        100
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 100)
        let headerView1 = UIView(frame: frame)
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 100))
        if(section==0){
            headerView1.backgroundColor = .red
        }else{
            headerView1.backgroundColor = .gray
            
        }
        
        return headerView1
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer"
    }
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 100))
        if(section==0){
            headerView.backgroundColor = .blue
        }else{
            headerView.backgroundColor = .systemPink
            
        }
        
        return headerView
    }
}
