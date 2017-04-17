// http://brettbukowski.github.io/SwiftExamples/examples/type-casting/

class Genre {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Classical: Genre {
    
}

class Pop: Genre {
    
}

class Music {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var collection = [
    Pop(name: "Hard Day's Night"),
    Classical(name: "Canon in D"),
    Classical(name: "Super classic")
]

//The type of collection is inferred to be Genre
//Use is to check instance of.

for song in collection {
    if song is Pop{
        print("\(song.name) is poppy")
    } else if song is Classical {
        print("\(song.name) is classical")
    }
}

//# Downcasting
//as? returns an optional (if you aren't sure the cast will succeed)
//as throws a runtime error if the cast doesn't succeed

for song in collection {
    if let popSong = song as? Pop {
        print("pop song")
    } else if let classicalSong = song as? Classical {
        print("Classicle song")
    }
}

//# AnyObject
//Tons of Cocoa APIs (dicts, arrays, etc.) return AnyObject, a generic
//object wrapper. You have to use as to cast an AnyObject back to the
//type you expect.

//AnyObject doesn't allow primitives--only class-based objects.

var randomCollection: [AnyObject] = [
    Pop(name: "Bishop Allen"),
    Classical(name: "Bach"),
    //    Music(name: "Good") for error -> Could not cast value of type Music to Genre

]

print("----")
for item in randomCollection {
    let songGenre = item as! Genre
    print(songGenre.name)
    
}

//Every item can also be downcasted in the for-loop
print("****")
for item in randomCollection as! [Genre] {
    print(item.name)
}


//# Any
//Any allows primitives and class-based objects.
var groups = [Any]()
groups.append("Hi")
groups.append(22)
groups.append(Pop(name: "Long Winters"))
groups.append(1.111)
groups.append(Classical(name: "Test"))


for item in groups {
    switch item {
    case let anInt as Int:
        anInt
    case let aDouble as Double:
        aDouble
    case let aString as String:
        aString
    case let aPop as Pop:
        aPop.name
    default:
        print("I Dont know")
    }
}















