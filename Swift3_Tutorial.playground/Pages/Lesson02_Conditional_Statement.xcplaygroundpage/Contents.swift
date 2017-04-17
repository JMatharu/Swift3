// Compare Values

1 == 1
"Bob" == "bob"
2 != 2

// Compare Range 
1>0
0<1
1>=0
0<=1

// Int, Double, String, Boolean
var type = (1==1)
print(type)

// Boolean is important for Conditional Statement

// Ex) Bank Balance

var balance = 1000
if balance < 0 {
    print("You can't withdraw any money")
} else {
    print("You can withdraw maximum \(balance) from your account")
}

// Complex Arguments
var userName = "jmatharu88"
var password = "123"

if (userName=="jmatharu88" && password=="123") {
    print("You may log in")
} else if (userName == "jmatharu88" || password == "123") {
    print("Your UserName or password could be wrong")
} else {
    print("Both Wrong")
}

// Ex) Drinking Check
var myAge: Int = 20

if myAge > 20  {
    print("You can drink in US")
} else {
    print("Don't even think of drinking")
}