//
//  ViewController.swift
//  ClickCounter
//
//  Created by Emil Sharifullin on 19/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
}

