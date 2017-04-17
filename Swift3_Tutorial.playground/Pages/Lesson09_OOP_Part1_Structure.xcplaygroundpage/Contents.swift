var bob = ["HairColor":"Black", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]
var rob = ["HairColor":"Brown", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]
var dob = ["HairColor":"Black", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]


//Structure & Blueprint

struct Human {
    var numberOfLegs: Int
    var numberOfFingres: Int
    var name: String
    func sayName() -> String {
        return "My Name is \(name)"
    }
}

var don = Human(numberOfLegs: 2, numberOfFingres: 10, name: "Don")
don.name
don.numberOfFingres
don.numberOfLegs
don.sayName()


// Ex 2 ) Volume of a cuboid
struct Cuboid {
    var height: Double
    var length: Double
    var width: Double
    // Using Function
    func volumeUsingFunction() -> Double {
        return height * length * width
    }
    
    // Using Computed Property
    var volumeUsingComputedProperty: Double {
        return height * length * width
    }
    
}

var fourByFourByFour = Cuboid(height: 4, length: 4, width: 4)
fourByFourByFour.volumeUsingFunction()
fourByFourByFour.volumeUsingComputedProperty


//Below Reference from https://www.raywenderlich.com/116714/swift-tutorial-introducing-structures

//Ex 3) Potential customer in range PIZZA SHOP

struct Location {
    let longitude: Double
    let latitude: Double
}

struct DeliveryRange {
    let range: Double
    let currentLocation: Location
}

let storeLocation = Location(longitude: 44.9871, latitude: -93.2758)
var pizzaRange = DeliveryRange(range: 200, currentLocation: storeLocation)

//Initializing a Struct
struct Name {
    var fName: String
    var lName: String
    
    // Full name seperated by space
    init(fullName: String) {
        let seperateName = fullName.characters.split(separator: " ")
        self.fName = String(seperateName.first!)
        self.lName = String(seperateName.last!)
    }
    
    init(fName: String, lName: String) {
        self.fName = fName
        self.lName = lName
    }
}

let myName = Name(fullName: "Jagdeep Matharu")
myName.fName
myName.lName

let myName2 = Name(fName: "Jagdeep", lName: "Matharu")
myName2.fName
myName2.lName















