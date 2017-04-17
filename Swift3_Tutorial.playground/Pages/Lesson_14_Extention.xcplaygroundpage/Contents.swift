// Extensions add new functionality to an existing class, structure, enumeration, or protocol type

//1) Computed Properties
// Extensions can add computed instance properties and computed type properties to existing types.
extension Int {
    var x: Int {
        return self * 100
    }
    var y: Int {
        return self % 2
    }
}

let threeTimes = 3.x
let modTwo = 55.y

//2) Initializers
// Extensions can add new initializers to existing types. This enables you to extend other types to accept your own custom types as initializer parameters, or to provide additional initialization options that were not included as part of the type’s original implementation.
struct Human {
    var numberOfLegs: Int
    var numberOfFingres: Int
    var name: String
    func sayName() -> String {
        return "My Name is \(name)"
    }
}

extension Human {
    init() {
        self.init(numberOfLegs: 2, numberOfFingres: 10, name: "Bob")
    }
}

var human = Human()
human.name
human.numberOfLegs
human.sayName()

//3) Methods
// Extensions can add new instance methods and type methods to existing types. 
extension Int {
    func repetition(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetition{
    print("Hello")
}

4.repetition(task: {
    print("Hi")
})

//Mutating Instance Methods
//Instance methods added with an extension can also modify (or mutate) the instance itself.
//Structure and enumeration methods that modify self or its properties must mark the instance method as mutating
extension Int {
    mutating func square() {
        self = self * self
    }
}
var number = 4
number.square()

//4) Subscripts
extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self/decimalBase) % 10
    }
}
1234566[4]


//5) Nested Types
//Extensions can add new nested types to existing classes, structures, and enumerations:

























