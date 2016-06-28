//
//  ViewController.swift
//  retroCalc
//
//  Created by Kevin on 6/26/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var outLabel: UILabel!
    
    enum operation: String{
        //enum is like making your own type
        case Divide = "/"
        case Multiply = "*"
        case Add = "+"
        case Subtract = "-"
        case Equal = "="
        case Empty = "Empty"
    }
    var btnSound: AVAudioPlayer!
    var displayNum: String = ""
    var leftString: String = ""
    var rightString: String = ""
    var result: String = ""
    var currentOperation: operation = operation.Empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPress(btn: UIButton!){
        
        playSound()
        displayNum += "\(btn.tag)"
        outLabel.text = displayNum

    }
    
    @IBAction func onDividePress(sender: AnyObject) {
        processOperation(operation.Divide)
        
    }
    @IBAction func onMultiplyPress(sender: AnyObject) {
        processOperation(operation.Multiply)
    }
    
    @IBAction func onSubPress(sender: AnyObject) {
        processOperation(operation.Subtract)
    }
    @IBAction func onAddPress(sender: AnyObject) {
        processOperation(operation.Add)
    }
    @IBAction func onEqualPress(sender: AnyObject) {
        processOperation(operation.Equal)
    }
    
    func processOperation(op: operation){
        playSound()
        if displayNum != ""{
            
        if currentOperation != operation.Empty {
            rightString = displayNum
            if currentOperation == operation.Add{
                result = "\(Double(leftString)! + Double(rightString)!)"
            }
            else if currentOperation == operation.Subtract{
                result = "\(Double(leftString)! - Double(rightString)!)"
                
            }
            else if currentOperation == operation.Divide{
                result = "\(Double(leftString)! / Double(rightString)!)"
                
            }
            else if currentOperation == operation.Multiply{
               result = "\(Double(leftString)! * Double(rightString)!)"
            }
            leftString = result
            outLabel.text = leftString
            currentOperation = op
        }
        else{
            //first time it's been pressed
            leftString = displayNum
            displayNum = ""
            currentOperation = op
        }
    }
    }
    func playSound(){
        if btnSound.playing{
            btnSound.stop()
        }
         btnSound.play()
    }
}

