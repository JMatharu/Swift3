// Struct(Value) vs Class(Reference)

// -------- Class --------
class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var humanClassObject = Human(name: "Bob")
humanClassObject.name

var newClassObject = humanClassObject
newClassObject.name
newClassObject.name = "Bobby"
humanClassObject.name



// -------- Struct --------
// This is similar to copy paste
// Much faster than classes
struct HumanStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var humanStructObject = HumanStruct(name: "Bob")
humanStructObject.name

var newHumanStructObject = humanStructObject
newHumanStructObject.name
newHumanStructObject.name = "Bobby"

humanStructObject.name
newHumanStructObject.name