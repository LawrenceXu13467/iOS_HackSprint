//
//  ViewController.swift
//  BruinTap
//
//  Created by Lawmac on 17/01/2018.
//  Copyright © 2018 ZihengXu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Properties
    
    var score = 0
    var timer : Timer!
    var time : Double = 10.0
    
    @IBOutlet weak var startButton: UIButton!

    @IBOutlet weak var TapButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    // Methods
    @objc func timerAction(){
        time -= 0.01
        timerLabel.text = String(format: "%.2f", time)
    
        if time <= 0 {
            timer.invalidate()
            timerLabel.text = "0.00"
            startButton.isEnabled = true
            TapButton.isEnabled = false
        }
        
    }
    
    @IBAction func startHit(_ sender: UIButton) {
        
        score = 0
        scoreLabel.text = String(score)
        
        time = 10
        timerLabel.text = String(format: "%.2f", time)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        startButton.isEnabled = false
        TapButton.isEnabled = true
    }

    @IBAction func tapHit(_ sender: UIButton) {
        score += 1
        scoreLabel.text = String(score)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TapButton.isEnabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

