//: Playground - noun: a place where people can play
//Swift with Shani

import UIKit
var groceries = [String]()

groceries.append("Tomato")
groceries.append("Potato")
groceries.append("Bean")
print(groceries)

if let match = groceries.index(of: "Bean") {
    groceries.remove(at: match)
}

print(groceries)

func getMulti(number: Int) -> (x2: Int, x3: Int) {
    let x2 = number * 2
    let x3 = number * 3
    return (x2, x3)
}

print(getMulti(number: 50).x2)


func sum(nums: Int...) -> Double {
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum)
}

func average(nums: Int...) -> Double {
    var sum = 0
    
    for num in nums {
        sum += num
    }
    
    return Double(sum) / Double(nums.count)
}

func doMath(mathOption: String) -> (Int...) -> Double {
    if mathOption == "average" {
        return average
    } else {
        return sum
    }
}

var mathFuncAverage = doMath(mathOption: "average")
print(mathFuncAverage(1,2,3,4,5,6,7,8,9))

var mathFuncSum = doMath(mathOption: "sum")
print(mathFuncSum(1,2,3,4,5,6,7,8,9))


var str1: String = "happy"
var str2: String = "sad"

func makeUppercase(str1: inout String, str2: inout String){
    str1 = str1.uppercased()
    str2 = str2.uppercased()
}

makeUppercase(str1: &str1, str2: &str2)

print(str1 + " " + str2)

// Closures
var noPrameterOrReturn: () -> () = {
    print("I have no parameters or return values")
}
noPrameterOrReturn()

var noPrameterAndOneReturn: () -> String = {
    return "This is No Prameter and One Return"
}
noPrameterAndOneReturn()

var oneParameterAndOneReturn:(String) -> String = { name -> String in
    return "Hi, \(name) !"
}
oneParameterAndOneReturn("Me")

var multiPrametersAndOneReturn:(String, String) -> String = { (firstName, lastName) -> String in
    var fullName = firstName + " " + lastName
    return fullName
}
multiPrametersAndOneReturn("FName", "LName")


var oneParameterAndMultipleReturn: ([Int]) -> (even:[Int], odd:[Int]) = {
    numbers -> ([Int], [Int]) in
    var oddNumberArray = [Int]()
    var evenNumberArray = [Int]()
    
    for number in numbers {
        number % 2 == 0 ? evenNumberArray.append(number) : oddNumberArray.append(number)
    }
    return (evenNumberArray, oddNumberArray)
}
oneParameterAndMultipleReturn([1,2,3,4,5,6,7,8,9,10]).even
oneParameterAndMultipleReturn([1,2,3,4,5,6,7,8,9,10]).odd

// Inferring Closure

var noPrameterOrReturn_I = {
    print("I have no parameters or return values - Inferring")
}
noPrameterOrReturn_I()

var noPrameterAndOneReturn_I = {
    return "This is No Prameter and One Return"
}
noPrameterAndOneReturn_I()

var oneParameterAndOneReturn_I = { (name: String) -> String in
    return "Hi, \(name) !"
}
oneParameterAndOneReturn_I("me")

var multiPrametersAndOneReturn_I = { (fName: String, lName: String) -> String in
    return fName + " " + lName
}
multiPrametersAndOneReturn_I("fname", "lname")

var oneParameterAndMultipleReturn_I = { (numbers: [Int]) -> (even:[Int], odd:[Int]) in
    var oddNumberArray = [Int]()
    var evenNumberArray = [Int]()
    
    for number in numbers {
        number % 2 == 0 ? evenNumberArray.append(number) : oddNumberArray.append(number)
    }
    return (evenNumberArray, oddNumberArray)
}
oneParameterAndMultipleReturn_I([1,2,3,4,5,6,7,8,9,10])
oneParameterAndMultipleReturn_I([1,2,3,4,5,6,7,8,9,10]).even
oneParameterAndMultipleReturn_I([1,2,3,4,5,6,7,8,9,10]).odd


//SHORT-HAND PARAMETER NAMES

var gameScore = [12,333,435,56,67,8,7,8,679,68,567,5,67,56]
func sortAscending(i: Int, j: Int) -> Bool {
    return i > j
}
let gameScoreSortedLong = gameScore.sorted(by: sortAscending)

// Refector to inline
let gameScoreSortedInLine = gameScore.sorted(by: {
    (i: Int, j:Int) -> Bool in
    return i > j
})

//Refactor again using type inference
let gameScoreSorterInferred = gameScore.sorted(by: { i, j in i > j})
gameScoreSorterInferred


//Short-hand arguments names
let gameScoreSorterShortHandArgument = gameScore.sorted(by: { $0 > $1})
gameScoreSorterShortHandArgument


var aNumber = 2
var multiplyBy2 = {
    aNumber * 2
}
aNumber
multiplyBy2()

// internal
func makeDeduction(start: Int, step: Int) -> () -> Int {
    var total = start
    func subtractor() -> Int {
        total -= step
        return total
    }
    return subtractor
}

var decreasing = makeDeduction(start: 10, step: 2)
decreasing()
decreasing()

var double: (Int) -> (Int) = { x in
    return 2 * x
}

var double_I = { (x: Int) -> Int in
    return  2 * x
}

double(2)
double_I(4)



















