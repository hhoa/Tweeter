//
//  CreatePostViewController + TextView.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

extension CreatePostViewController {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if txtViewContent.textColor == UIColor.lightGray {
            txtViewContent.text = ""
            txtViewContent.textColor = UIColor.black
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        let newText: String = textView.text
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if txtViewContent.text.isEmpty {
            setPlaceholder()
        }
    }
}
