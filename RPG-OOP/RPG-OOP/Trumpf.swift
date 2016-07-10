//
//  Trumpf.swift
//  RPG-OOP
//
//  Created by Kevin on 7/9/16.
//  Copyright © 2016 RNG-Guys. All rights reserved.
//

import Foundation

class Trumpf: Enemy{
    override var loot: [String]{
        get{
            return ["Wig", "Make America Great again hat", "Trump University Lawsuit", "Orange Clown's Soul"]
        }
    }
    override var type: String{
        return "Bankruptcy"
    }
}