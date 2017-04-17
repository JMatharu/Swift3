// Refer here for more: https://www.raywenderlich.com/119881/enums-structs-and-classes-in-swift

// Four named Types - protocol, struct, class, enums -> Last 3 are model types
// Two Compound Types - tuple, function

// Excersie 1: Shapes with Scalable Vector Graphics (SVG)

import Foundation

// Enums 
enum ColorName: String {
    // If you don’t specify what the case is equal to, the compiler automatically makes the String the same as the name of the case. That means you only need to write the case name:
    case black, silver, gray, white, maroon, red, purple, fuchsia, green, lime, olive, yellow, navy, blue, teal, aqua
}

// Associated Values
enum CSSColor {
    case named(ColorName)
    case rgb(UInt8, UInt8, UInt8)
}

// Protocols and Methods with an Enum
//// In Swift, enums, just like the other named types, can adopt protocols.
//// The key to inter-operating with the Swift Standard Library is to adopt standard library protocols.
extension CSSColor: CustomStringConvertible {
    var description: String {
        switch self {
        case .named(let colorName):
            return colorName.rawValue
        case .rgb(let red, let green, let blue):
            return String(format: "#%02X%02X%02X", red, green, blue)
        }
    }
}
