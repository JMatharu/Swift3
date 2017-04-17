//Ex) Tell you what to drink depending on age

// 1..10 Milk
//11..40 Soda
//41..150 Water
//151..10000 you alive?

var myAge = 20

switch myAge {
case 1...10:
    print("Drink Milk")
case 11...40:
    print("Drink Soda")
case 41...150:
    print("Drink Water")
default:
    print("")
}


//Ex) Track Food (Switch + For Loop)

var myDailyFood = ["Pizza", "Burger", "Roti", "Noodles", "Roti"]
var numberOfRoti = 0

for food in myDailyFood {
    switch food {
    case "Pizza":
        print("I ate \(food)")
    case "Roti":
        print("I ate \(food)")
        numberOfRoti += 1
    default:
        print("I ate something")
    }
}

print(numberOfRoti)
