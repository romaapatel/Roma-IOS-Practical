var string : String = "Simform Solutions"
var lengthOfString = string.count
//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
//let firstString: String = "Roma"
//let len = firstString.count
if lengthOfString >= 2 {
    print("Original String is:", string)
    print("New string is:", string.prefix(2) )
} else if lengthOfString < 2 {
    print("Original String is:", string)
    print("New String:", string)
}

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
var thirdString : String = "Roma"
var removedFirstChar = String(thirdString.removeFirst())
var forthString : String = "Swift"
var removeFirst = String(forthString.removeFirst())
print("Concatenated string is:", thirdString + forthString)

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
//var fifthString: String = "Hello Roma"
//var lengthOfString = fifthString
if lengthOfString >= 2 {
    let removedFirstTwoChar  = string.prefix(2)
    let remainingChar = string.suffix(string.count - 2)
    print("Merged String is:", remainingChar + removedFirstTwoChar)
} else {
    print(" Original String is: \(string) and string length is less then two")
}

//Write a Swift program to test if a given string starts with "Sw".
var stringForComparing : String = "Swift"
func isStartingWith(_ stringForComparing: String) -> Bool {
    if stringForComparing.hasPrefix("Sw") {
        return true
    } else {
        return false
    }
}
print(isStartingWith(stringForComparing) )

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
//var seventhString: String = "Simform Solution"  //need to create variable for 3
var number = 3
if lengthOfString >= number {
    let firstCharOfString = string.prefix(number)
    let lastCharOfString = string.suffix(number)
    print("Newly generated string is: \(firstCharOfString)\(lastCharOfString)" )
} else {
    print("String \(string) is less then \(number)")
}
//Multiline String
print("")
let multiString : String = """
                            Hello How was your day today?
                            Hope well!!
                          """
print("Example of multilined string:\n\(multiString)" )



