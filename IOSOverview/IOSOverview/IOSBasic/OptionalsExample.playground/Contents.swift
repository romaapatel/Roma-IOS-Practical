//Declaring Optionals
var optionalNumber : Int?
//optionalNumber = 10

//Declaring optionals in swift and using force Unwrapping in optionals
var integerOptional : Int?
var stringOptional : String? = "roma"
var newString = stringOptional!
print(newString)
if stringOptional != nil {
    print("String is \(stringOptional)")
} else {
    print("String is nil")
}

//If let (safe unwrapping)
//Using if let also called as safe Unwrapping in optionals
print("")
if let number = optionalNumber {
    print ("I have value, it is \(number)")
} else {
    print ("OOPS No value")
}

//Using guard in Optionals
print("")
func squareOfNumber(number : Int?) {
    guard let number = number else {
        print("no Value")
        return
    }
    print("Square of Number is \(number * 2)")
}
squareOfNumber(number: optionalNumber)

//Using nil colancing in optionals. If the optional has a value, the nil coalescing operator will unwrap it. If the optional’s value is nil, it will assign it a default value instead
var name : String?
name = "roma"
let unwrappedName = name ?? "Anonymous"
print ("\nExample of nil Collision:", unwrappedName)
