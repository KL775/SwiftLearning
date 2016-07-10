//
//  chrispy.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class crispy: Enemy{
    let immune_max = 15
    
    override var loot: [String]{
        get{
            return ["Cat Claws", "Durandal", "Gluttony Skill Scroll", "Pure Gold"]
        }
    }
    override var type: String{
        return "Crispy Treats"
    }
    override func attack(attackPwr: Int) -> Bool {
        if attackPwr >= immune_max{
            return super.attack(attackPwr) //use original func
        }
        else{
            return false
        }
    }
}