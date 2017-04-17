// Swift with Shani
import Foundation

/*
 Type Casting
 */

class Vehicle {
    var fuelType: String
    var wheelNumber: Int
    var brand: String
    
    init(fuelType: String, wheelNumber: Int, brand: String) {
        self.fuelType = fuelType
        self.wheelNumber = wheelNumber
        self.brand = brand
    }
}


class Car: Vehicle {
    var model: String
    
    init(fuelType: String, wheelNumber: Int, brand: String, model: String) {
        self.model = model
        super.init(fuelType: fuelType, wheelNumber: wheelNumber, brand: brand)
    }
}

class Bicycle: Vehicle {
    var gearNumber: Int
    
    init(fuelType: String, wheelNumber: Int, brand: String, gearNumber: Int) {
        self.gearNumber = gearNumber
        super.init(fuelType: fuelType, wheelNumber: wheelNumber, brand: brand)
    }
}

// Create array to hold few instances

var garage = [Bicycle(fuelType: "none", wheelNumber: 2, brand: "Terk", gearNumber: 1),
              Car(fuelType: "Electricity", wheelNumber: 4, brand: "Tesla", model: "Model S"),
              Bicycle(fuelType: "none", wheelNumber: 2, brand: "Scott", gearNumber: 10),
              Car(fuelType: "Biodeisel", wheelNumber: 4, brand: "Vv", model: "Golf"),
              Car(fuelType: "Gasoline", wheelNumber: 3, brand: "Elio", model: "")]

// Example: Use type check operator - is

var bikeCount = 0
var carCount = 0

for vehicle in garage {
    if vehicle is Car {
        carCount += 1
        print("This is Car")
    } else if vehicle is Bicycle {
        bikeCount += 1
        print("This is Bike")
    }
}

print(carCount)
print(bikeCount)

// Downcasting - constant/variable of certain class maybe or refer to an instance behind the scenes & if this is the case you can downcast to the subclass type using typecast operator "as" -

// 1. as? -> optional
// 2. as! -> force unwrap

// 1. as? optional. Example using the as? (or conditional form which return an optional)

for vehicle in garage {
    if let car = vehicle as? Car {
        print("My \(car.brand) uses \(car.fuelType) as fuel and has \(car.wheelNumber) wheels.")
    } else if let bike = vehicle as? Bicycle {
        if bike.gearNumber == 1 {
            print("My \(bike.brand) is a fixie, which has only \(bike.gearNumber) gear.")
        } else {
            print("My \(bike.brand) is a \(bike.gearNumber) speed.")
        }
    }
}

// 2. as! -> force unwrap
// EXAMPLE: Force unwrapping data that I believe is JSON and CASTING it to a dictionary using as!
// Pull data in from our json file, to work with weather data go to https://darksky.net
// To make json easier to read, http://jsonprettyprint.com

let fileURL = Bundle.main.url(forResource: "weather", withExtension: "json")

let weatherForcastData = NSData(contentsOf: fileURL!)

do {
    let json = try JSONSerialization.jsonObject(with: weatherForcastData! as Data, options: JSONSerialization.ReadingOptions.allowFragments)
    
    // Force unwrap and type cast to dictionary as String
    
    if let timeZones = (json as! NSDictionary)["timezone"] as? String {
        print(timeZones)
    }
    
    // Anyobject and Any
    if let hourlyForcast = (json as! NSDictionary)["hourly"] as? [String: AnyObject] {
        if let dailySummary = hourlyForcast["summary"] as? String {
            print(dailySummary)
        }
    }
    
    // Using Gaurd Statements
    var currentlySummary: String {
        guard let current = (json as! NSDictionary)["currently"] as? [String: AnyObject],
            let forSummary = current["summary"] as? String else {
                return "error"
        }
        return forSummary
    }
    print(currentlySummary)
    
} catch {
    print("There was an error serealize JSON : \(error)")
}
