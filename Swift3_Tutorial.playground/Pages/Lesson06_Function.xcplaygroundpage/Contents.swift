var name = "Bob"
var number = 123

name
number

func doSome(){
    print(name)
    print(number)
}

doSome()

func inPutValue(putValue: String){
    print(putValue)
}

inPutValue(putValue: "I am a Function")

// Drinking Check
func checkDrinkingAge(inputAge: Int) {
    if inputAge < 21 {
        print("You can't Drink")
    } else {
        print("You may Drink")
    }
}

checkDrinkingAge(inputAge: 1)
checkDrinkingAge(inputAge: 33)

//Function that returnes a value
func returnValue() -> String {
    return "I am a returned Value"
}

var returnedValue = returnValue()
print(returnedValue)




