//
//  ViewController.swift
//  EggTimer
//
//  Created by Gladys Umali on 7/25/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()     // Global variable.
    var time = 0
    
    
    @IBOutlet var timerLabel: UILabel!
    
    func processTimer() {
        
        time += 1 // one second is added each time.
        timerLabel.text = "\(time)"
        print("\(time)")
    }
    

    @IBAction func startButton(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func resetButton(_ sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

