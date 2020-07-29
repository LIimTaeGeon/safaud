//
//  ViewController.swift
//  test2
//
//  Created by gntech on 2020/01/10.
//  Copyright © 2020 gntech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputtext: UITextField!
    
    @IBOutlet weak var outputtext: UILabel!
    
    @IBAction func insert(_ sender: Any) {
        outputtext.text = inputtext.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

