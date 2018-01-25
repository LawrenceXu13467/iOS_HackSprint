//
//  ViewController.swift
//  The Post
//
//  Created by Lawmac on 24/01/2018.
//  Copyright © 2018 ZihengXu. All rights reserved.
//

import UIKit

class CreatePostVC: UIViewController {
    @IBOutlet var titleTextField: UITextField!

    @IBOutlet var postTextView: UITextView!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let distination = segue.destination as? ReadPostVC {
            distination.postTitle = titleTextField.text
            distination.postContents = postTextView.text
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

