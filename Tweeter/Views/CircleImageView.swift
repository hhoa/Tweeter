//
//  CircleImageView.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupImage()
    }
    
    func setupImage() {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.layer.masksToBounds = false
    }

}
