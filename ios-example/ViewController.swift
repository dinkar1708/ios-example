//
//  ViewController.swift
//  ios-example
//
//  Created by Dinakar Prasad Maurya on 2020/01/29.
//  Copyright © 2020 Dinakar Prasad Maurya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiSetup()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "CustomVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CustomVCViewController1") as!CustomVCViewController1
        self.present(vc, animated: true, completion: nil)
    }
    
    func uiSetup() {
        //Stack View to arrange view automatically
        let stackView   = UIStackView()
        //        aligh vertical
        stackView.axis  = NSLayoutConstraint.Axis.vertical
        stackView.distribution  = UIStackView.Distribution.equalSpacing
        stackView.alignment = UIStackView.Alignment.center
        stackView.spacing   = 16.0


        let movie = UIButton()
        movie.backgroundColor = .gray
        movie.setTitle("Collection View Netflix Demo", for: .normal)
        movie.addTarget(self, action: #selector(movieAction), for: .touchUpInside)
        
        let pod = UIButton()
        pod.backgroundColor = .gray
        pod.setTitle("Pod Usages Example", for: .normal)
        pod.addTarget(self, action: #selector(podUsagesAction), for: .touchUpInside)
        
        let size = UIButton()
        size.backgroundColor = .gray
        size.setTitle("Size classes Example", for: .normal)
        size.addTarget(self, action: #selector(sizeClassesAction), for: .touchUpInside)
        
        let land = UIButton()
        land.backgroundColor = .gray
        land.setTitle("Land Scape UI Example", for: .normal)
        land.addTarget(self, action: #selector(landScapeDemoAction), for: .touchUpInside)
        
        let child = UIButton()
        child.backgroundColor = .gray
        child.setTitle("Child View Controller Example", for: .normal)
        child.addTarget(self, action: #selector(childVCDemoAction), for: .touchUpInside)
        
        let alv2 = UIButton()
        alv2.backgroundColor = .gray
        alv2.setTitle("Auto Layout Example2", for: .normal)
        alv2.addTarget(self, action: #selector(autoLayoutDemoAction2), for: .touchUpInside)
        
        let alv = UIButton()
        alv.backgroundColor = .gray
        alv.setTitle("Adaptive Layout Example", for: .normal)
        alv.addTarget(self, action: #selector(adaptiveLayoutDemoAction), for: .touchUpInside)
        
        let av = UIButton()
        av.backgroundColor = .gray
        av.setTitle("Auto Layout Example", for: .normal)
        av.addTarget(self, action: #selector(autoLayoutDemoAction), for: .touchUpInside)
        
        let nv = UIButton()
        nv.backgroundColor = .gray
        nv.setTitle("NetworkExample", for: .normal)
        nv.addTarget(self, action: #selector(networkDemoAction), for: .touchUpInside)
        
        let tableView = UIButton()
        tableView.backgroundColor = .gray
        tableView.setTitle("TableViewExample", for: .normal)
        tableView.addTarget(self, action: #selector(tableViewAction), for: .touchUpInside)
        
        let tableView2 = UIButton()
        tableView2.backgroundColor = .gray
        tableView2.setTitle("UITableView", for: .normal)
        tableView2.addTarget(self, action: #selector(tableView2Action), for: .touchUpInside)
        
        let tableView2MultipleSection = UIButton()
        tableView2MultipleSection.backgroundColor = .gray
        tableView2MultipleSection.setTitle("TableView2MultipleSection", for: .normal)
        tableView2MultipleSection.addTarget(self, action: #selector(tableView2MultipleSectionAction), for: .touchUpInside)
        
        let tableViewHeaderFooter = UIButton()
        tableViewHeaderFooter.backgroundColor = .gray
        tableViewHeaderFooter.setTitle("tableViewHeaderFooter", for: .normal)
        tableViewHeaderFooter.addTarget(self, action: #selector(tableView2HeaderFooterAction), for: .touchUpInside)
        
        let customView = UIButton()
        customView.backgroundColor = .gray
        customView.setTitle("CustomView", for: .normal)
        customView.addTarget(self, action: #selector(customeViewAction), for: .touchUpInside)
        
        let collectionView = UIButton()
        collectionView.backgroundColor = .gray
        collectionView.setTitle("VerticalCollectionView", for: .normal)
        collectionView.addTarget(self, action: #selector(verticalcollectionViewAction), for: .touchUpInside)
        
        let collectionViewAdvance = UIButton()
        collectionViewAdvance.backgroundColor = .gray
        collectionViewAdvance.setTitle("CollectionViewAdvance", for: .normal)
        collectionViewAdvance.addTarget(self, action: #selector(collectionViewAdvanceAction), for: .touchUpInside)
        
        let tableViewCollectionView = UIButton()
        tableViewCollectionView.backgroundColor = .gray
        tableViewCollectionView.setTitle("TableViewCollectionView", for: .normal)
        tableViewCollectionView.addTarget(self, action: #selector(tableViewCollectionViewAction), for: .touchUpInside)

        stackView.addArrangedSubview(movie)
        stackView.addArrangedSubview(pod)
        stackView.addArrangedSubview(size)
        stackView.addArrangedSubview(land)
        stackView.addArrangedSubview(child)
        stackView.addArrangedSubview(alv2)
        stackView.addArrangedSubview(alv)
        stackView.addArrangedSubview(av)
        stackView.addArrangedSubview(nv)
        stackView.addArrangedSubview(tableView)
        stackView.addArrangedSubview(tableView2)
        stackView.addArrangedSubview(tableView2MultipleSection)
        stackView.addArrangedSubview(tableViewHeaderFooter)
        stackView.addArrangedSubview(customView)
        stackView.addArrangedSubview(collectionView)
        stackView.addArrangedSubview(collectionViewAdvance)
        stackView.addArrangedSubview(tableViewCollectionView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(stackView)
        
        //Constraints
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
    }
    
    @objc func movieAction(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "NetflixMovie", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NetflixMovieController") as!NetflixMovieController
        self.present(vc, animated: true, completion: nil)
    }
    
    
    @objc func podUsagesAction(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "PodUsages", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PodUsagesViewController") as!PodUsagesViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func sizeClassesAction(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "SizeClasses", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SizeClassesViewController") as!SizeClassesViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func landScapeDemoAction(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "LandScapeUI", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LandScapeUIViewController") as!LandScapeUIViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func childVCDemoAction(sender: UIButton!) {
        let storyboard = UIStoryboard(name: "CustomVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CustomVCViewController1") as!CustomVCViewController1
        self.present(vc, animated: true, completion: nil)
    }
    
    
    @objc func autoLayoutDemoAction2(sender: UIButton!) {
        // Create a reference to the the storyboard
        let storyboard = UIStoryboard(name: "AutoLayout2", bundle: nil)
        let customViewController = storyboard.instantiateViewController(withIdentifier: "AutoLayoutViewCntroller2") as!AutoLayoutViewCntroller2
        self.present(customViewController, animated: true, completion: nil)
    }
    
    @objc func adaptiveLayoutDemoAction(sender: UIButton!) {
        // Create a reference to the the storyboard
        let storyboard = UIStoryboard(name: "AdaptiveLayout", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AdaptiveLayoutViewCntroller") as!AdaptiveLayoutViewCntroller
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func autoLayoutDemoAction(sender: UIButton!) {
        // Create a reference to the the storyboard
        let storyboard = UIStoryboard(name: "AutoLayout", bundle: nil)
        let customViewController = storyboard.instantiateViewController(withIdentifier: "AutoLayoutViewCntroller") as!AutoLayoutViewCntroller
        self.present(customViewController, animated: true, completion: nil)
    }
    
    @objc func networkDemoAction(sender: UIButton!) {
        // Create a reference to the the storyboard
        let storyboard = UIStoryboard(name: "NetworkDemo", bundle: nil)
        let customViewController = storyboard.instantiateViewController(withIdentifier: "NetworkDemoViewController") as!NetworkDemoViewController
        self.present(customViewController, animated: true, completion: nil)
    }
    
    
    @objc func tableViewAction(sender: UIButton!) {
        let controller:TableViewController = TableViewController()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func tableView2Action(sender: UIButton!) {
        let controller:TableViewController2 = TableViewController2()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func tableView2MultipleSectionAction(sender: UIButton!) {
        let controller:MultipleSectionTableViewController = MultipleSectionTableViewController()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func tableView2HeaderFooterAction(sender: UIButton!) {
        let controller:HeadersFootersTableViewController = HeadersFootersTableViewController()
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc func customeViewAction(sender: UIButton!) {
        let controller:CustomVCViewController = CustomVCViewController()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func verticalcollectionViewAction(sender: UIButton!) {
        let controller:VerticalCollectionViewController = VerticalCollectionViewController()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func collectionViewAdvanceAction(sender: UIButton!) {
        let controller:AdvanceCollectionViewController = AdvanceCollectionViewController()
        self.present(controller, animated: true, completion: nil)
    }
    @objc func tableViewCollectionViewAction(sender: UIButton!) {
        let controller:TableViewCollectionViewController = TableViewCollectionViewController()
        self.present(controller, animated: true, completion: nil)
    }
}

