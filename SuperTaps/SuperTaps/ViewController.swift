//
//  ViewController.swift
//  SuperTaps
//
//  Created by Kevin on 6/14/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var tapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var coin: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPlayPress(sender: UIButton){
        if (tapsText.text != nil && tapsText.text != ""){
            
            logoImg.hidden = true
            tapsText.hidden = true
            playButton.hidden = true
            
            coin.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(tapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
        else{
            tapsText.text = "Put a valid number!!"
        }
    }

    @IBAction func onCoinTap(sender: UIButton){
        currentTaps += 1
        updateTapsLabel()
        
        if(checkGameOver()){
            restartGame()
        }
    }

    func restartGame(){
        maxTaps = 0
        tapsText.text = ""
        logoImg.hidden = false
        tapsText.hidden = false
        playButton.hidden = false
        
        coin.hidden = true
        tapLabel.hidden = true
    }
    
    func checkGameOver() -> Bool{
        if currentTaps >= maxTaps{
            return true
        }
        else{
            return false
        }
    }
    
    func updateTapsLabel(){
        tapLabel.text = "\(currentTaps) Taps"
    }
}

