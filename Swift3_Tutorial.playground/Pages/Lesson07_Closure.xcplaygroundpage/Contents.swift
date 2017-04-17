// Funtion that adds 2 values

func sum(x: Int, y: Int) -> Int {
    return x+y
}

var results = sum(x: 5, y: 5)
print(results)


//Make is Shorter -> Closure
// Closure has no func keyword and no name

var someUsingClosure: (Int, Int) -> Int = { x,y in
    return x+y
}
someUsingClosure(11,1)

var someUsingClosure_I = { (x: Int, y:Int) in
    return x+y
}
someUsingClosure_I(99, 9)