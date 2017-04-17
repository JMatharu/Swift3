// Type case ---> Converting Type


class BaseClass {
    var baseProp = 123
}

class ChildClass: BaseClass {
    var childProp = 123456
}

var child = ChildClass()
child.childProp
child.baseProp

// Type casting - Up Casting - this always works
var newChild = ChildClass() as BaseClass
newChild.baseProp


// Ex 2)
var myName = "Bob" as Any
var myNumber = 123456789 as Any

// this is upcasting, and using this we can have 2 types in 1 array that supports 1 type only
var myArray = [myName, myNumber]


// Downcasting - possibly can fail - so we usei as? as!
// Ex 3) TODO

// optional downcasting - a?

// force downcasting - a! (not recomended)
