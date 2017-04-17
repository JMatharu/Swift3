// 3 ways 1) Tuple 2) Array 3) Dictionary

//1) Tuple

var randomList = (123, 12.3, "Bob", true)
randomList.0
randomList.1
randomList.2
randomList.3


//2) Array
var myFriendList = ["qwe", "asd", "zxc", "dfg"]
myFriendList.count
myFriendList.append("qazå")
myFriendList.count
myFriendList.remove(at: 1)
myFriendList
myFriendList.count
myFriendList.removeAll()
myFriendList.count

//Making an Empty Array
var emptyArrey = [String]()
emptyArrey
emptyArrey.append("Hi")
emptyArrey


//3) Dictionary

var myHealthInfo = ["HairColor":"Black", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]
myHealthInfo["HairColor"]
myHealthInfo["Height"]
myHealthInfo.updateValue("10", forKey: "ShoeSize")
myHealthInfo
myHealthInfo.count
myHealthInfo.removeAll()
myHealthInfo.count

