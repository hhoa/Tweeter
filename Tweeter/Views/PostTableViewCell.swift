//
//  PostTableViewCell.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgAvatar: CircleImageView!
    @IBOutlet weak var lblUsername: UILabel!
    @IBOutlet weak var lblContent: UILabel!
    @IBOutlet weak var lblIndex: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
