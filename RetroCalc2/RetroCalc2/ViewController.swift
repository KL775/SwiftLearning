//
//  ViewController.swift
//  RetroCalc2
//
//  Created by Kevin on 6/28/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var btnSound: AVAudioPlayer!
    
    var leftString = ""
    var rightString = ""
    var displayNum = ""
    var result: String = ""
    
    enum operation: String{
        case add = "+"
        case minus = "-"
        case divide = "/"
        case multiply = "*"
        case equal = "="
        case empty = ""
    }
    var currentOp: operation = operation.empty
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
        } catch let err as NSError{
            print(err.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onNumberPress(btn: UIButton!){
        playSound()
        displayNum += "\(btn.tag)"
        outputLabel.text = displayNum
    }
    @IBAction func onMultiplyPress(sender: AnyObject) {
        processOp(operation.multiply)
    }
    @IBAction func onAddPress(sender: AnyObject) {
        processOp(operation.add)
    }
    
    @IBAction func onDividePress(sender: AnyObject) {
        processOp(operation.divide)
    }
    @IBAction func onMinusPress(sender: AnyObject) {
        processOp(operation.minus)
    }
    @IBAction func onEqualsPress(sender: AnyObject) {
        processOp(operation.equal)
    }
    @IBAction func onClearPress(sender: AnyObject){
        clearDisplay()
    }
    
    func processOp(op: operation){
        playSound()
        if displayNum != "" {
            if currentOp != operation.empty {
                rightString = displayNum
                displayNum = ""
                if currentOp == operation.add{
                     result = "\(Double(leftString)! + Double(rightString)!)"
                }
                else if currentOp == operation.minus{
                    result = "\(Double(leftString)! - Double(rightString)!)"
                }
                else if currentOp == operation.multiply{
                    result = "\(Double(leftString)! * Double(rightString)!)"
                }
                else if currentOp == operation.divide{
                    result = "\(Double(leftString)! / Double(rightString)!)"
                }
                leftString = result
                outputLabel.text = leftString
            }
            currentOp = op
        }
            
            else{
                //first time displaying
                leftString = displayNum
                displayNum = ""
                currentOp = op
            }
        }
    
    func clearDisplay(){
        btnSound.play()
        displayNum = ""
        outputLabel.text = "0"
        result = ""
        leftString = ""
        rightString = ""
    }
    
    func playSound(){
        if btnSound.playing{
            btnSound.stop()
        }
        btnSound.play()
    }
}

