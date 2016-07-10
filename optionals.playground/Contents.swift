//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?
/*The question mark defines things as optionals. This variable may or may not have a value.
-> use it when you're not sure if something has a value */
//! unwraps value. Unwrapping is the process of taking the value from the variable used before !
//Rule 1: don't ever unwrap anything if you don't check if it has a value

if lotteryWinnings != nil{
    print(lotteryWinnings!)
}
else{
    print("Ha, empty winnings")
}

lotteryWinnings = 900

//Method 2, the preferred way
if let winnings = lotteryWinnings{
    print(winnings)
}
//if let works like this: if the value you're assigning winning to has no values, no value
//will be assigned.

class animal{
    var family: String?
}

//Long way
var Rea: animal?
if let R = Rea{
    if let f = R.family{
        print(f)
    }
}

print(Rea?.family)

Rea = animal()
Rea?.family = "The Invisible Genus"
//When you use an optional with a variable, every time afterwards in which you call the value,
//you must use the optional

if let r = Rea, let f = r.family{
    print(f)
}

var bigFamily: [animal]?
bigFamily = [animal]()

if let newFam = bigFamily where newFam.count > 0 {
    //only execute if not nil and more than 0 elements
    for members in newFam{
        print(members.family)
    }
}
else{
    bigFamily?.append(animal())
    print(bigFamily?.count)
}
//standard checking

//Implicitly Unwrapped Optional

class Person{
    private var age: Int!
    //same as optional but won't throw error when try to access properties
    //promises to assign a value to this value. Needs to be initilized in some way or form
    var newAge: Int{
        if age == nil{
            age = 17
        }
        return age
    }
    func setAge(newAge: Int){
        self.age = newAge
    }
}

var jack = Person()
jack.newAge

class Dog{
    var species: String
    //Guaranteeing species a value
    init(someSpecies: String){
        self.species = someSpecies
    }
}