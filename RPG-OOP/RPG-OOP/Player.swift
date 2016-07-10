//
//  Player.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class Player : Character{
    private var _name = "Phantom"
    var name: String{
        get{
            return _name
        }
    }
    private var _inventory = [String]()
    
    var inventory: [String]{
        get{
            return _inventory
        }
    }
    
    func obtainLoot(item: String){
        _inventory.append(item)
    }
    convenience init(name: String, hp: Int, attackPwr: Int){
        self.init(startHP: hp, startATK: attackPwr)
        _name = name
    }
}