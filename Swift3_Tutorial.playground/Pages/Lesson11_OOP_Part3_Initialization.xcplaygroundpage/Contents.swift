// Different between Struct and Class


// 1) Struct cannot Inherit
// 2) In Struct, swift will automatically allow you to input the value

// Initialization in Struct
struct myStructWithPropertyInitialized {
    var someProperty: Double = 1.356
}

var myStructWithPropertyInitializedVar = myStructWithPropertyInitialized()
myStructWithPropertyInitializedVar.someProperty //1.356
myStructWithPropertyInitialized.init().someProperty //1.356
myStructWithPropertyInitialized.init(someProperty: 1.669).someProperty //1.669


struct myStructWithPropertyNotInitialized {
    var someProperty: Double
}

var myStructWithPropertyNotInitializedVar = myStructWithPropertyNotInitialized(someProperty: 11.01)
myStructWithPropertyNotInitializedVar.someProperty //11.01
myStructWithPropertyNotInitialized.init(someProperty: 13.99).someProperty //13.99


// Initialization in Class
class myClass {
    var someProperty: Double
    
    init(anotherProperty: Double) {
        someProperty = anotherProperty
    }
}

var myClassVar = myClass(anotherProperty: 15.66)
myClassVar.someProperty //15.66


// Finding Radius

class Circle {
    var x: Int, y: Int
    var radius: Double
    var diameter: Double {
        return radius * 2
    }
    
    init(x: Int, y: Int, radius: Double) {
        self.x = x
        self.y = y
        self.radius = radius
    }
}

var myCircle = Circle(x: 1, y: 2, radius: 8.3)
myCircle.diameter