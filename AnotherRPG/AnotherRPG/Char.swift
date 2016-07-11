//
//  File.swift
//  AnotherRPG
//
//  Created by Kevin on 7/10/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class character {
    private var HP = 100
    private var ATK = 20
    private var Name = "Shadow"
    var hp: Int{
        get{
            return HP
        }
        set{
            if newValue == 100{
                HP = newValue
            }
        }
    }
    var atk: Int{
        get{
            return ATK
        }
    }
    var name: String{
        get{
            return Name
        }
    }
    init(Name: String, ATK: Int, HP: Int){
        self.Name = Name
        self.ATK = ATK
        self.HP = HP
    }
    
    func getAttacked(oppATK: Int){
        self.HP -= oppATK
    }
    func isAlive()->Bool{
        if HP <= 0{
            return false
        }
        else{
            return true
        }
    }
}