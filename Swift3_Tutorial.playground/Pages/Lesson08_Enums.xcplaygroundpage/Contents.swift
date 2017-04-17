// Introduction to Enums -> BluePrint and Structures
// Refre -: https://www.weheartswift.com/tuples-enums/

enum iOSDeviceType {
    case iPhone
    case iPad
    case iWatch
}

var myDevice = iOSDeviceType.iPhone

// Dot Syntax
var myDevice_2: iOSDeviceType = .iPhone

if myDevice_2 == .iPhone {
    print("I have a iPhone!")
}

//Associated Value
enum iOSDeviceType2 {
    case iPhone(String)
    case iPad(String)
    case iWatch
}

var myDevice_3: iOSDeviceType2 = .iPhone("7")
var six = iOSDeviceType2.iPhone("6")
var seven: iOSDeviceType2 = .iPhone("7")
var watch: iOSDeviceType2 = .iWatch


switch myDevice_3 {
case .iPhone(let model):
    print("iPhone \(model)")
case .iPad(let model):
    print("iPad \(model)")
case .iWatch:
    print("iWatch")
default:
    print("Not an iOS device")
}

func sameDevice(_ firstDevice: iOSDeviceType2, secondDevice: iOSDeviceType2) -> Bool {
    switch (firstDevice, secondDevice) {
    case (.iPhone(let a), .iPhone(let b)) where a == b:
        return true
    case (.iPad(let a), .iPad(let b)) where a == b:
        return true
    case (.iWatch, .iWatch):
        return true
    default:
        return false
    }
}

print(sameDevice(myDevice_3, secondDevice: six))
print(sameDevice(myDevice_3, secondDevice: seven))
print(sameDevice(myDevice_3, secondDevice: watch))

enum Direction: Int {
    case up // = 1
    case down // will have the raw value 2
    case left // will have the raw value 3
    case right // will have the raw value 4
}

var direction: Direction = .down
print(direction.rawValue)
		