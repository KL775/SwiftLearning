//: Playground - noun: a place where people can play

import UIKit

//Objects and classes

class Unit {

    private var type: String
    private var HP: Int
    private var ATK: Int
    private var DEF: Int
    private var REC: Int
    private var currentMaxHP: Int
    init(type: String, HP: Int, ATK: Int, DEF: Int, REC: Int){
        self.type = type
        self.HP = HP
        self.currentMaxHP = HP
        self.ATK = ATK
        self.DEF = DEF
        self.REC = REC
    }
    //getter / setter
    
    var newType: String{
        get{
            return type
        }
        set{
            if newValue != type{
                type = newValue
            }
        }
    }
    
    func attack(opp: Unit){

    }
    
    func def(opp: Unit){
        
    }
    func recover() -> Int{
        if (HP == currentMaxHP){
            //do nothing
        }
        else if (HP < currentMaxHP){
            HP += (2000 + Int(Double(REC) * 0.1))
        }
        return HP
    }
}

var Maxwell = Unit(type: "Light", HP: 6600, ATK: 2000, DEF: 2000, REC: 2000)
var llewxaM = Maxwell
