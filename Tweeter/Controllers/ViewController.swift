//
//  ViewController.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var addPostView: RoundedView!
    @IBOutlet weak var postTableView: UITableView!
    
    let cellIdentifier: String = "PostCell"
    let placeholderName: String = "Kha Hoa"
    let segueIdentifier: String = "goToCreatePost"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPostView()
        setupTableView()
    }
    
    func setupPostView() {
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedAddPost))
        addPostView.addGestureRecognizer(tapGesture)
    }
    
    @objc func tappedAddPost(_ gesture: UITapGestureRecognizer) {
        performSegue(withIdentifier: segueIdentifier, sender: self)
    }

    func setupTableView() {
        postTableView.dataSource = self
        postTableView.delegate = self
    }

}

