//
//  ViewController.swift
//  AnotherRPG
//
//  Created by Kevin on 7/10/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1btn: UIButton!
    @IBOutlet weak var p2btn: UIButton!
    
    @IBOutlet weak var displayBox: UIImageView!
    
    @IBOutlet weak var p2img: UIImageView!
    
    @IBOutlet weak var p1img: UIImageView!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var playerOne: character!
    var playerTwo: character!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerOne = character(Name: "Gobby", ATK: 20, HP: 100)
        playerTwo = character(Name: "Goldie Locks", ATK: 20, HP: 100)
        displayLabel.text = "\(playerOne.name) is fighting \(playerTwo.name)"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func firstPlayerAttack(sender: AnyObject){
        //p1btn.enabled = false
        //NSTimer.scheduledTimerWithTimeInterval(3.0, target: p1btn, selector: #selector(ViewController.enableButtonOne), userInfo: nil, repeats: false)
        if playerOne.isAlive(){
            playerTwo.getAttacked(playerOne.atk)
            displayLabel.text = "\(playerOne.name) deals \(playerOne.atk) as damage"
            checkLoser(playerTwo)
            print("Successful Check")
        }
        else{
            displayLabel.text = "Dead players can't attack!"
        }

    }
    @IBAction func secPlayerAttack(sender: AnyObject) {
        //p2btn.enabled = false
        //NSTimer.scheduledTimerWithTimeInterval(3.0, target: p2btn, selector: #selector(ViewController.enableButtonTwo), userInfo: nil, repeats: false)
        if playerTwo.isAlive(){
            playerOne.getAttacked(playerTwo.atk)
            displayLabel.text = "\(playerTwo.name) deals \(playerTwo.atk) as damage"
            checkLoser(playerOne)
        }
        else{
            displayLabel.text = "You're already dead mate!"
        }
    }
    func checkLoser(loser: character){
        if !loser.isAlive(){
            displayLabel.text = "\(loser.name) has prevailed!!!"
            if loser.name == playerOne.name{
                p1img.hidden = true
            }
            else{
                p2img.hidden = true
            }
        }
    }
    

    
    func restart(){
        playerOne.hp = 100
        playerTwo.hp = 100
        unhide()
        displayLabel.text = "\(playerOne.name) is fighting \(playerTwo.name)"
    }

    func enableButtonOne(){
        p1btn.enabled = false
    }
    
    func  enableButtonTwo(){
        p2btn.enabled = true
    }
    
    func unhide(){
        p1img.hidden = false
        p2img.hidden = false
    }

}

