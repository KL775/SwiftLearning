//
//  ViewController.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?

    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var playerHPlabel: UILabel!
    
    @IBOutlet weak var enemyHPlabel: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chestButton: UIButton!
    
    @IBAction func onAttackPress(sender: AnyObject) {
        if enemy.attack(player.attackValue){
            printLabel.text = "Attacked \(enemy.type) for \(player.attackValue) HP"
            enemyHPlabel.text = "\(enemy.hp) HP"

        }
        else{
            printLabel.text = "Attack was unsuccessful!!"
        }
        
        if let loot = enemy.dropLoot(){
            chestMessage = "\(player.name) found \(loot)!"
            chestButton.hidden = false
            player.obtainLoot(loot)
        }
        
        if !enemy.isAlive{
            enemyHPlabel.text = ""
            printLabel.text = "\(enemy.type) was slayed!!"
            enemyImg.hidden = true
        }
    }
    
    @IBAction func onChestPress(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.enemyGenerator), userInfo: nil, repeats: false)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        player = Player(name: "Filthy Chris", hp: 110, attackPwr: 20)
        playerHPlabel.text = "\(player.hp)"
        enemyGenerator()
    }
    
    func enemyGenerator(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0{
            enemy = crispy(startHP: 70, startATK: 7)
        }
        else{
            enemy = Trumpf(startHP: 1, startATK: 1)
        }
        enemyImg.hidden = false
        enemyHPlabel.text = "\(enemy.hp) HP"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

