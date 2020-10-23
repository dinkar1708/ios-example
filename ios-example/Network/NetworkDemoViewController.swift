//
//  ViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class NetworkDemoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("NetworkDemoViewController........")
        
        URLSession.shared.dataTask(with: URL(string: "https://stackoverflow.com/")!) {(data, response, error) in
            print(response)
            print(error)
            print(data)
            guard let data = data else { return }
            print("Response........")
            print(String(data: data, encoding: .utf8)!)
        }.resume()
    }
}

