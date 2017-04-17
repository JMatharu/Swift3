// Inheritence in Class

class Human {
    // Stored Property
    var numberOfHands: Int = 2
    
    // Computed Property
    var numberOfFingers: Int {
        return 10
    }
    
    func name() -> String {
        return "I am a Human"
    }
}

class Bob: Human {
    // Overriding stored property from base class
    override var numberOfHands: Int {
        get {
            return 3
        }
        set {
            
        }
    }
    
    // Overriding computed property
    override var numberOfFingers: Int {
        return 11
    }
    
    // Overriding method
    override func name() -> String {
        return "My Name is Bob"
    }
}

var human = Human()
human.name()
human.numberOfFingers
human.numberOfHands

var bob = Bob()
bob.name()
bob.numberOfFingers
bob.numberOfHands
