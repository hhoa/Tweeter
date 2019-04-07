//
//  ViewController + TableView.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit


extension ViewController {
    func numberOfSections(in tableView: UITableView) -> Int {
        return PostManager.instance.countSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PostManager.instance.sections[section].countPosts()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PostTableViewCell
        let section: Section = PostManager.instance.sections[indexPath.section]
        let post = section.posts[indexPath.row]
        
        cell.imgAvatar.image = section.imgAvatar
        cell.lblUsername.text = section.username
        cell.lblContent.text = post.content
        cell.lblIndex.text = "\(post.index)/\(section.countPosts())"
        
        return cell
    }
}
