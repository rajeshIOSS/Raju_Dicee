//
//  ViewController.swift
//  Dicee
//
//  Created by Rajesh on 25/05/18.
//  Copyright © 2018 Rajesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndexDice1 : Int = 0
    var randomIndexDice2 : Int = 0
    var myDict = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getDiceRepeat()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        getDiceRepeat()
    }
    
    func getDiceRepeat() {
        randomIndexDice1 = Int(arc4random_uniform(6))
        randomIndexDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: myDict[randomIndexDice1])
        diceImageView2.image = UIImage(named: myDict[randomIndexDice2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getDiceRepeat()
    }
    
}

