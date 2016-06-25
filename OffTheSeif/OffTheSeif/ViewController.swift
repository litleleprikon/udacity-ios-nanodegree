//
//  ViewController.swift
//  OffTheSeif
//
//  Created by Emil Sharifullin on 19/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onButtonPressed() {
        let controller = UIAlertController()
        
        controller.title = "Test view"
        controller.message = "This is a test"
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
            action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

