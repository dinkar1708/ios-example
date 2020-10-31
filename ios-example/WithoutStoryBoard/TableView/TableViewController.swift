//
//  TableViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    var myTableView: UITableView = UITableView()
    let countries = ["Japan", "India", "US", "Canada", "Indonesia", "Australia",
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
                     "Brazil",]
    let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        // Do any additional setup after loading the view.
    }
    
    func setUI() {
        myTableView.frame = CGRect(x: 0, y: 0, width: 300, height: 600)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        self.view.addSubview(myTableView)
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

extension TableViewController : UITableViewDelegate { }

extension TableViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = (tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        
        cell.textLabel?.text = countries[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let country = countries[indexPath.row]
        print("Tapped country "+country)
    }
}
