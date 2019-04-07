//
//  PostManager.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import Foundation

class PostManager {
    static let instance = PostManager()
    private (set) var sections: [Section] = []
    
    private init() {}
    
    func addSection(newSection: Section) {
        sections.append(newSection)
    }
    
    func countSections() -> Int {
        return sections.count
    }
}
