//: Playground - noun: a place where people can play

// 1.1 Basic operation

5 + 2
5 - 2
5 * 2
5 / 2
5 % 2

// 1.2 Store value using let and var

var clientNumber = 9192939123
var clientName = "Bob"
var clientGPA = 3.66

print(clientNumber)
print(clientName)
print(clientGPA)

let number = 123

var newNumber = clientNumber + number

//Ex) Tip Calculator

var foodPrice: Double = 30
var tipPercent: Double = 15

var totalPrice = foodPrice + (foodPrice * (tipPercent/100))
print(totalPrice)


// Refrence Below from
// https://www.raywenderlich.com/143771/swift-tutorial-part-1-expressions-variables-constants

//Challenges
//1. Declare a constant exercises with value 11 and a variable exercisesSolved with value 0. Increment this variable every time you solve an exercise (including this one).
let exercises = 11
var exercisesSolved = 0
var tempExercise = exercises
tempExercise += exercisesSolved
print(tempExercise)

//2.Given the following code:
//age = 16
//print(age)
//age = 30
//print(age)
//Declare age so that it compiles. Did you use var or let?

var age = 16
print(age)
age = 30
print(age)

//3. Consider the following code:
//let a: Int = 46
//let b: Int = 10
//Work out what answer equals when you replace the final line of code above with each of these options:
//// 1
//let answer1: Int = (a * 100) + b
//// 2
//let answer2: Int = (a * 100) + (b * 100)
//// 3
//let answer3: Int = (a * 100) + (b / 10)

//4. Add parentheses to the following calculation. The parentheses should show the order in which the operations are performed and should not alter the result of the calculation.
//////5 * 3 - 4 / 2 * 2

//5. Declare two constants a and b of type Double and assign both a value. Calculate the average of a and b and store the result in a constant named average.

//6. A temperature expressed in °C can be converted to °F by multiplying by 1.8 then incrementing by 32. In this challenge, do the reverse: convert a temperature from °F to °C. Declare a constant named fahrenheit of type Double and assign it a value. Calculate the corresponding temperature in °C and store the result in a constant named celcius.

//7. Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Declare a constant position and assign it a value between 0 and 63. Calculate the corresponding row and column numbers and store the results in constants named row and column.

//8. Declare constants named dividend and divisor of type Double and assign both a value. Calculate the quotient and remainder of an integer division of dividend by divisor and store the results in constants named quotient and remainder. Calculate the remainder without using the operator %.
//9. A circle is made up of 2 radians, corresponding with 360 degrees. Declare a constant degrees of type Double and assign it an initial value.Calculate the corresponding angle in radians and store the result in a constant named radians.
//10. Declare four constants named x1, y1, x2 and y2 of type Double. These constants represent the 2-dimensional coordinates of two points.Calculate the distance between these two points and store the result in a constant named distance.
//11. Increment variable exercisesSolved a final time. Use the print function to print the percentage of exercises you managed to solve.The printed result should be a number between 0 and 1.

