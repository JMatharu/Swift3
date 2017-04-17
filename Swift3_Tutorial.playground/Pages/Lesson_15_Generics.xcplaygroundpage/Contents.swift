// Generics code is to write flexible, reusable functions and structures

var stringArray = ["one", "two", "three"]
var intArray = [1,2,3]
var doubleArray = [1.2,3.4,5.6]

func printStringArray(array: [String]) {
    for item in array {
        print(item)
    }
}

func printIntArray(array: [Int]) {
    for item in array {
        print(item)
    }
}

func printDoubleArray(array: [Double]) {
    for item in array {
        print(item)
    }
}

printStringArray(array: stringArray)
printIntArray(array: intArray)
printDoubleArray(array: doubleArray)

// Generic method

//Ex 1
func printArray<T>(array:[T]) {
    for item in array {
        print(item)
    }
}
print("Generics -> ")
printArray(array: doubleArray)
printArray(array: intArray)
printArray(array: stringArray)

//Ex 2
func doNothing<T>(x: T) -> T {
    return x
}
doNothing(x: 111)
doNothing(x: 12.23)
doNothing(x: "Hello")
doNothing(x: true)

//Ex 3
// Mutating is when you change the instance variabel from inside of struct/class
struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
}

var friendList = ["Bob", "Rob", "Mob"]
var array = GenericArray(items: friendList)
array.push(item: "Job")
print(array.items)
