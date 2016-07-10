//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Shape{
    private var area: Double?
    
    func calculateArea()->Double?{
        return area
    }
    
    func printArea(){
        print("The arean is \(area)")
    }
}

class Rectangle: Shape{
    var width = 1.0
    var height = 1.0
    init(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    override func calculateArea() -> Double? {
        area = width * height
        return area
    }
}

class Circle: Shape{
    var diameter = 1.0
    init(diameter: Double){
        self.diameter = diameter
    }
    override func calculateArea() -> Double? {
        area = 3.14 * pow(diameter/2, 2)
        return area
    }
}

var circle = Circle(diameter: 30.0)
var rectangle = Rectangle(width: 20, height: 30)

circle.calculateArea()
rectangle.calculateArea()