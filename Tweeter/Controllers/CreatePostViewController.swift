//
//  CreatePostViewController.swift
//  Tweeter
//
//  Created by Hoa Hoang on 4/7/19.
//  Copyright © 2019 Hoa Hoang. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var lblIndex: UILabel!
    @IBOutlet weak var txtViewContent: UITextView!
    @IBOutlet weak var txtViewBottomConstraint: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        listenKeyboardEvent()
        detectTapView()
        setupTextView()
    }
    
    func listenKeyboardEvent() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func detectTapView() {
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func hideKeyboard(_ gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    func setupTextView() {
        txtViewContent.delegate = self
        setPlaceholder()
    }
    
    func setPlaceholder() {
        txtViewContent.text = "What's on your mind?"
        txtViewContent.textColor = UIColor.lightGray
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tweetPressed(_ sender: UIButton) {
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: - Handle to keyboard event
extension CreatePostViewController {
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let keyboardHeight = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue.height else {
            return
        }
        
        txtViewBottomConstraint.constant = keyboardHeight + 16
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        txtViewBottomConstraint.constant = 16
    }
}
