var myFriendList = ["qwe","asd", "Bob", "zxc", "dfg"]

myFriendList[0]
myFriendList[1]
myFriendList[2]
myFriendList[3]


//Introduce FOR loop

for name in myFriendList {
    print(name)
}


//Check if the array contains "Bob"

for name in myFriendList {
    if name == "Bob" {
        print("I am Bob")
    } else {
        print("I am not Bob")
    }
}

var myHealthInfo = ["HairColor":"Black", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]

for (key,value) in myHealthInfo {
    print("Key is \(key) and its value is \(value)")
}