//
//  ViewController.swift
//  ImagePickerExample
//
//  Created by Emil Sharifullin on 19/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func experiment() {
        let imagePickerController = UIImagePickerController()
        self.presentViewController(imagePickerController, animated:true, completion: nil)
    }

}

