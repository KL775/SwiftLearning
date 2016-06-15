//
//  ViewController.swift
//  Multiples
//
//  Created by Kevin on 6/15/16.
//  Copyright © 2016 SuperCool2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables
    var multiple: Int = 0
    var currentValue: Int = 0
    var updatedValue: Int = 0

    @IBOutlet weak var MultResult: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var InputTextfield: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlay(sender: UIButton){
        if(InputTextfield.text != nil && InputTextfield.text != ""){
            InputTextfield.hidden = true
            playButton.hidden = true
            
            addButton.hidden = false
            MultResult.hidden = false
            
            multiple = Int(InputTextfield.text!)!
        }
        else{
            InputTextfield.text = "Please choose a valid number!"
        }
    }
    
    @IBAction func onAdd(sender: UIButton) {
        currentValue = updatedValue
        updateLabel()
        if (updatedValue >= 100){
            resetGame()
        }
    }
    
    func updateLabel(){
        updatedValue = multiple + currentValue
        MultResult.text = "\(currentValue) + \(multiple) = \(updatedValue)"
    }
    
    func resetGame(){
        InputTextfield.text = ""
        multiple = 0
        currentValue = 0
        updatedValue = 0
        updateLabel()
        
        InputTextfield.hidden = false
        playButton.hidden = false
            
        addButton.hidden = true
        MultResult.hidden = true
    }
    
}

