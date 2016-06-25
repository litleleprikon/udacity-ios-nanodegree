//
//  RPSModel.swift
//  RockPaperScissors
//
//  Created by Emil Sharifullin on 20/06/16.
//  Copyright © 2016 Emil Sharifullin. All rights reserved.
//

import UIKit

class RPSModel: NSObject {
    enum Figures: Int {
        case Rock = 0, Paper, Scissors
    }
    
    static func getRandomFigure() -> Figures {
        return Figures.init(rawValue: Int(arc4random_uniform(3)))!
    }
    
    static func checkWin(first: Figures, second: Figures) -> Bool {
        return (first.rawValue+1) == second.rawValue
    }
}
