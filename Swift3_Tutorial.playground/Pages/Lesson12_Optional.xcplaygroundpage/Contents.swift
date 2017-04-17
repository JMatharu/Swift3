// Swift is type safe language

var myVar = ["Name": "Bob", "Race": "Asian"]
myVar["Name"]
myVar["country"]

// Normal String
var myName: String = "Jagdeep"

// Optional String
var myOptionalName: String? = "Jagdeep Matharu"
var myOptionalName2: String? = nil // or use anyy String like "Jagdeep Matharu"

myName
myOptionalName

// UnWrapping -> You must convert optional to normal type
// 2 ways to unwrap
// 1) Force UnWrapping / Implicit UnWrapping (!)
var myNewName = myOptionalName!
// var myNewName = myOptionalName2! // Crashing


//2) UnImplicit UnWrapping --> Better and Safer way
if let myNewName2 = myOptionalName2 {
    myNewName2
}
