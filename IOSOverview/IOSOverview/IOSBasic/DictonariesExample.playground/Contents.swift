/*
 You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
 */
var code = [
"a" : "b",
"b" : "c",
"c" : "d",
"d" : "e",
"e" : "f",
"f" : "g",
"g" : "h",
"h" : "i",
"i" : "j",
"j" : "k",
"k" : "l",
"l" : "m",
"m" : "n",
"n" : "o",
"o" : "p",
"p" : "q",
"q" : "r",
"r" : "s",
"s" : "t",
"t" : "u",
"u" : "v",
"v" : "w",
"w" : "x",
"x" : "y",
"y" : "z",
"z" : "a", ]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe5"
for key  in encodedMessage {
    if let key = code.first(where: { ($0.value == String(key))})?.key {             //$0 will give key of value
        print(key,terminator: "")
    } else if String(key) == " " {
        print(" ",terminator: "")
    }
}
print(" ")

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
var people : [[String : String]] = [
["firstName" : "Calvin",
"lastName" : "Newton"],
["firstName" : "Garry",
"lastName" : "Mckenzie"],
["firstName" : "Leah",
"lastName" : "Rivera"],
["firstName" : "Sonja",
"lastName" : "Moreno"],
["firstName" : "Noel",
"lastName" : "Bowen"] ]
func getFirstName(people : [[String : String]]) {
    var firstNameArray : [String] = []
    for key in people {
        if let val = key.first(where: { $0.key == "firstName"})?.value {
            firstNameArray.append(val)
        }
    }
    print(firstNameArray)
}
getFirstName(people : people)

//You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.
fullName(people : people)
func fullName(people : [[String : String]]) {
    var fullNameArray: [String] = []    //
    var fullName = ""
    for key in people {
        if let val = key.first(where: { $0.key == "firstName"})?.value {
            fullName = val;
        }
        if let val = key.first(where: { $0.key == "lastName"})?.value {
            fullName += " " + val;
        }
        fullNameArray.append(fullName)
    }
    print("\n", fullNameArray)
    print("")
}

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.
var students: [[String : Any]] = [
[ "firstName" : "Calvin",
"lastName" : "Newton",
"score" : 13 ],
[ "firstName" : "Garry",
"lastName" : "Mckenzie",
"score" : 12 ],
[ "firstName" : "Leah",
"lastName": "Rivera",
"score" : 10 ],
[ "firstName" : "Sonja",
"lastName": "Moreno",
"score" : 3 ],
[ "firstName" : "Noel",
"lastName" : "Bowen",
"score" : 16 ] ]
getWeakestStudent(people : students)
func getWeakestStudent(people : [[String : Any]]) {
    var score : Int?
    score = 200
    var fullName = ""
    for key in people {
        if let val = key.first(where: { $0.key == "score" && ($0.value as? Int) ?? 0 < score ?? 0})?.value {
            if let val = key.first(where: { $0.key == "firstName"})?.value as? String {
                fullName = val
            }
            if let val = key.first(where: { $0.key == "lastName"})?.value as? String {
                fullName += " " + val
            }
            if let val = score {
                score = val as Int
            }
        }
    }
    print("Student with lowest mark is: \(fullName)")
    print("")
}

//You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
getStudentList(people : students)
func getStudentList(people : [[String : Any]]) {
    var fullName = ""
    var id = 1
    for key in people {
        if let val = key.first(where: { $0.key == "firstName"})?.value as? String {
            fullName = String(id) + " " + val
        }
        if let val = key.first(where: { $0.key == "lastName"})?.value as? String {
            fullName += " " + val
        }
        if let val = key.first(where: { $0.key == "score"})?.value as? Int {
            fullName += " " + String((val))
        }
        id += 1
        print(fullName)
    }
}

//You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.
print("")
func getFrequency() {
    print("Numbers in ascending orders with frequency are as follows:")
    let numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
    var dict: [Int : Int] = [:]
    for index in 0...numbers.count-1 {
        if (dict[numbers[index]] == nil) {
            dict[numbers[index]] = 0
        }
       if let val = dict[numbers[index]] {
            dict[numbers[index]] = val + 1;
        } else {
            print("empty")
        }
    }
    let keys = dict.keys.sorted()
    for values in keys {
        if let value = dict[values] {
            print("\(values) \(value)")
       }
    }
}
getFrequency()
