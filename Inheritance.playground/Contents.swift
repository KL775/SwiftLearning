//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class animal{
    private var name: String
    private var rating: Int
    private var dangerRating: String
    private var specialProperty = "None"
    init(name: String, rating: Int, dangerRating: String){
        self.name = name
        self.rating = rating
        self.dangerRating = dangerRating
    }
    func makeSound()->String{
        return "...."
    }
    var newProperty: String{
        get{
            return specialProperty
        }
        set{
            if newValue != specialProperty{
                print(specialProperty)
                specialProperty = newValue
                print(specialProperty)
            }
        }
    }
}

class cat : animal{
    override func makeSound()->String {
        return "Meow"
    }
}

class Chris : animal{
    var mybankAcc: Int
    init(name: String, rating: Int, dangerRating: String, bankAccVal: Int){
        self.mybankAcc = bankAccVal
        super.init(name: name, rating: rating, dangerRating: dangerRating)

    }
    override func makeSound()->String{
        return "Oink"
    }
}


var ChrisGalloway = Chris(name: "Chris Galloway", rating: 1, dangerRating: "Going extinct", bankAccVal: 0)

ChrisGalloway.makeSound()
ChrisGalloway.newProperty = "Begging for tuition moneys"
ChrisGalloway.specialProperty
