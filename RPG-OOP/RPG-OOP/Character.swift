//
//  Character.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class Character{
    private var _hp: Int = 100
    private var _attackValue: Int = 10
    var attackValue: Int{
        get{
            return _attackValue
        }
    }
    var hp: Int{
        get{
            return _hp
        }
        set{
            _hp -= newValue
        }
    }
    
    var isAlive: Bool{
        get{
            if _hp <= 0 {
                return false
            }
            else{
                return true
            }
        }
        
    }
    
    init(startHP: Int, startATK: Int){
        self._hp = startHP
        self._attackValue = startATK
    }
    func attack(attackPwr: Int) -> Bool{
        self._hp -= attackPwr
        
        return true
    }
}