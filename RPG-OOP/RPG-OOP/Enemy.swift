//
//  Enemy.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class Enemy : Character{
    var loot: [String]{
        return ["Excalipoor", "Chris' mixed tape (cold)", "Musty Rusty Dagger"]
    }
    var type: String {
        return "Grunt"
    }
    func dropLoot()->String?{
        if !isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}