// Ex 1) Total spending per day

enum SpendingError: Error {
    case limit
    case minus
}

func calculateTotalSpending(morningSpending: Double, eveningSpending: Double) throws -> Double {
    if morningSpending < 0 || eveningSpending < 0 {
        throw SpendingError.minus
    }
    
    if (morningSpending + eveningSpending) > 1000 {
        throw SpendingError.limit
    }
    
    return morningSpending + eveningSpending
}

do {
    try calculateTotalSpending(morningSpending: 1000, eveningSpending: 200)
} catch SpendingError.minus {
    print("How is it possible!")
} catch SpendingError.limit {
    print("You've reached the limit!")
}