//
//  ViewController.swift
//  dice_udemy
//
//  Created by Natalie Nuno on 6/4/18.
//  Copyright © 2018 Natalie Nuno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var rollResultsLabel: UILabel!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var buttonCustom: UIButton!
 
    
    @IBAction func rollButonPressed(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6))+1
        randomDiceIndex2 = Int(arc4random_uniform(6))+1
        
        //dice1 image change based on roll
        if(randomDiceIndex1 == 1){
            diceImageView1.image = #imageLiteral(resourceName: "dice1")
        }
        if(randomDiceIndex1 == 2){
            diceImageView1.image = #imageLiteral(resourceName: "dice2")
        }
        if(randomDiceIndex1 == 3) {
            diceImageView1.image = #imageLiteral(resourceName: "dice3")
        }
        if(randomDiceIndex1 == 4) {
            diceImageView1.image = #imageLiteral(resourceName: "dice4")
        }
        if(randomDiceIndex1 == 5) {
            diceImageView1.image = #imageLiteral(resourceName: "dice5")
        }
        if(randomDiceIndex1 == 6) {
            diceImageView1.image = #imageLiteral(resourceName: "dice6")
        }
        
        //dice 2
        if(randomDiceIndex2 == 1){
            diceImageView2.image = #imageLiteral(resourceName: "dice1")
        }
        if(randomDiceIndex2 == 2){
            diceImageView2.image = #imageLiteral(resourceName: "dice2")
        }
        if(randomDiceIndex2 == 3) {
            diceImageView2.image = #imageLiteral(resourceName: "dice3")
        }
        if(randomDiceIndex2 == 4) {
            diceImageView2.image = #imageLiteral(resourceName: "dice4")
        }
        if(randomDiceIndex2 == 5) {
            diceImageView2.image = #imageLiteral(resourceName: "dice5")
        }
        if(randomDiceIndex2 == 6) {
            diceImageView2.image = #imageLiteral(resourceName: "dice6")
        }
        
        let rollResults = randomDiceIndex1 + randomDiceIndex2
        
        rollResultsLabel.text = String(rollResults)
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

