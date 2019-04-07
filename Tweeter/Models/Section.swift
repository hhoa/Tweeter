//
//  Post.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

struct Section {
    var imgAvatar: UIImage
    var username: String
    private (set) var posts: [Post]
    
    func countPosts() -> Int {
        return posts.count
    }
}
