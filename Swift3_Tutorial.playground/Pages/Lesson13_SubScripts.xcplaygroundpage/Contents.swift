//EX 1) Time Table

struct TimesTable {
    var multipler: Int
    subscript(index: Int) -> Int {
        return index * multipler
    }
}

var threeTimesTable = TimesTable(multipler: 3)
threeTimesTable[3]


// EX 2) Shortcuts for weekdays
class WeekDays {
    var days = ["Mon", "Tues", "Wed", "Thur", "Fri", "Sat", "Sun"]
    subscript(index: Int) -> String {
        return days[index]
    }
}

var someWeek = WeekDays()
someWeek[1]
someWeek[6]


// Ex 3) Health Info

struct HealthInfo {
    var myHealthInfo = ["HairColor":"Black", "Height":"6ft", "Weight":"190", "EyeColor":"Brown"]
    subscript(key: String) -> String {
        if let newInfo = myHealthInfo[key] {
            return newInfo
        } else {
            return "No Value found"
        }
    }
}

var myHealthInfo = HealthInfo()
myHealthInfo["asd"]
myHealthInfo["HairColor"]

// Ex 4) Getter/Setter in Subscripts
class Movies {
    var moviesName = [""]
    subscript(index: Int) -> String {
        get {
            return moviesName[index]
        }
        set(newElement) {
            moviesName.insert(newElement, at: index)
        }
    }
}

var myMovies = Movies()
myMovies[0] = "Star Trek"
myMovies[0]
