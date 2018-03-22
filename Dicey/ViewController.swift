//
//  ViewController.swift
//  Dicey
//
//  Created by Viraj patel on 3/22/18.
//  Copyright © 2018 Viraj patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;

    //array to store all images
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImgView1: UIImageView!
    @IBOutlet weak var diceImgView2: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib. // connected to github
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Roll the Dicey button
    @IBAction func rollBtn(_ sender: UIButton) {
        
        //arc4random_uniform function generates random number from 0 to 6 - 1
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //print(randomDiceIndex2)
        
        diceImgView1.image = UIImage(named: diceArray[randomDiceIndex1]) // replace image
        diceImgView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    
    
}

