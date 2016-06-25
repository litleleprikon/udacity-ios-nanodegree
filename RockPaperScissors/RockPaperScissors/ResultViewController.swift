//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Emil Sharifullin on 20/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.figure != nil {
            makeResult()
        }
    }
    
    func makeResult() {
        if RPSModel.checkWin(self.figure, RPSModel.getRandomFigure(RPSModel)) {
            self.image = UIImage("")
        }
        
    }
    
    var figure: RPSModel.Figures!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
