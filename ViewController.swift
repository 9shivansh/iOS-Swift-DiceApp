//
//  ViewController.swift
//  DiceApp
//
//  Created by Shivansh  on 08/05/19.
//  Copyright © 2019 Shivansh Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let DiceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
   // var DiceDetails = Int = 0
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    
    
    @IBOutlet weak var diceIcon1: UIImageView!
    @IBOutlet weak var diceIcon2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceFaces()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceFaces()
       // var DiceDetails = "/(randomDiceIndex1), "
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceFaces()
    }
    
    func updateDiceFaces()
    {
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceIcon1.image = UIImage(named: DiceArray[randomDiceIndex1])
        diceIcon2.image = UIImage(named: DiceArray[randomDiceIndex2]) 
    }
    
}


