//Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class
class Demo {
    var string = "Hello Simform"
    var greeting = "Good Afternoon"
    func getString() {
        string = "Roma"
        print("String is \(string)")
        print(greeting)
    }
}
var demo = Demo()
demo.getString()
print("")

// Create a swift program to demonstrate usage of computed properties using getter and sette
print("Output of Second")
class Calculation {
    var firstNumber = 10
    var secondNumber = 20
    var sum :Int {
    get {
         firstNumber + secondNumber
    }
    set(thirdNumber) {
           secondNumber = thirdNumber + firstNumber
           firstNumber = thirdNumber + secondNumber
        }
    }
}
var calculation = Calculation()
print("Get Value ", calculation.sum)
calculation.firstNumber = 10
calculation.secondNumber = 20
calculation.sum = 5
print ("New Value of First : " , calculation.firstNumber)
print ("New Value of Second : " , calculation.secondNumber)
print("")

// Create a swift program to show usage of stored properties
print("Output of 3")
struct Circle {
    var radius : Double
    let PI = 3.14
}
var circle = Circle(radius: 4)
var areaOfCircle = circle.PI * circle.radius * circle.radius
print("Area Of Circle :", areaOfCircle)
print("")

//Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.
print("Output of 4")
class Employee {
    var name : String
    var id : Int
    init(name : String , id : Int) {
        self.name = name
        self.id = id
    }
}
var employee = [Employee(name: "Roma", id: 1), Employee(name: "Vidhi", id: 2) , Employee(name: "Katha", id: 3)]
for value in employee {
    print(value.name, value.id )
}
print("")

//Create one example of usage of willSet and didSet.
print("Output of 5")
class Property {
    var firsrNumber: Int = 200 {
        didSet {
            print ("\(oldValue) this is old Value")
        }
        willSet {
            print("\(newValue) will set after this method")
        }
    }
}
let property = Property()
print("Hello \(property.firsrNumber)")
property.firsrNumber = 504
print("")

//Create one lazy stored property in a class and show usage of i
print("Output of 6")
struct Fibonacci {
    var age = 16
    lazy var fibonacciOfAge: Int = {
        getFibonacciNumber(of: self.age)
    } ()
    func getFibonacciNumber(of num: Int) -> Int {
        if num < 2 {
            return num
        } else {
            return getFibonacciNumber(of: num - 1) + getFibonacciNumber(of: num - 2)
        }
    }
}
var fibonacci = Fibonacci()
print(fibonacci.fibonacciOfAge)
print("")

//Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.("
print("Output of 7")
class Human {
    var name: String = "Roma"
    var occupation: String = "Student"
    var age: Int = 23
    var gender: String = "Female"
    var contactNo: Int?
}
class Student: Human {
    var college: String = "L J "
}
class EmployeeDetail: Human {
    var company: String = "Simform"
}
var employeeDetail = EmployeeDetail()
employeeDetail.contactNo = 123456789
print("Name : \(employeeDetail.name) \nAge : \(employeeDetail.age) \nCompany : \(employeeDetail.company)")
print("Contact No: \(employeeDetail.contactNo)")
var student = Student()
student.contactNo = 456789369
print("Gender : \(student.gender) \nCollege : \(student.college)")
print("Contact No: \(student.contactNo)")
print("")

//Create one structure to show usage of mutating function in swift
print("Output of 8")
struct MutatingStruct {
    var greetingUser: String = "Good Morning"
    mutating func changeValue() {
        greetingUser = "Good Evening"
        print(greetingUser)
    }
}
var mutatingStruct = MutatingStruct()
print(mutatingStruct.greetingUser)
mutatingStruct.changeValue()
print("")

//create one class inheritance demo to show usage of method overriding.
print("Output of 9")
class Addition {
    func sum (firstNumber : Int , secondNumber : Int) {
        let sumOfTwoNumber = firstNumber + secondNumber
        print("Sum ",sumOfTwoNumber)
    }
}
class Subtraction: Addition {
    override func sum(firstNumber: Int, secondNumber: Int) {
        super.sum(firstNumber: firstNumber, secondNumber: secondNumber)
        let subtractionOfTwoNumber = firstNumber - secondNumber
        print("Sub ", subtractionOfTwoNumber)
    }
}
var subtraction = Subtraction()
subtraction.sum(firstNumber: 10 , secondNumber: 20)
print("")

//Create one swift class to show usage of type methods
class Math {
    func positiveNumber (number : Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}
struct Division {
    static func positiveNumber(number : Int) -> Int{
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
}
var division = Division.positiveNumber(number: -5)
print(division)
print("")

// Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week
class DaysOfWeek {
    let days = ["Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Saturday", "Sunday"]
    
    subscript(index: Int) -> String {
        get {
            if index < 8 {
                print(days[index - 1])
                return days[index - 1]
            } else {
                return "Invalid Input"
            }
        }
    }
    
    func getDay(at number: Int) -> String {
        return self[number]
    }
}
var dayOfWeek = DaysOfWeek()
dayOfWeek.getDay(at: 6)
print("")

//  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position
class CharAtGivenPosition {
    let string: String
    
    init(string: String) {
        self.string = string
    }
    
    subscript(index: Int) -> Character{
        get {
            let array = Array(string)
            if index <= string.count {
                return array[index-1]
            }
            print("\(string) does not have \(index) characters so, printing the last character at \(array.count)th position  ")
            return array[array.count - 1]
        }
    }
}
var charAtGivenPosition = CharAtGivenPosition(string: "HEllo Simform")
print(charAtGivenPosition[14])
print("")

// Create one swift subscript program which takes range as input and returns the string between the range
class RangeOfString {
    subscript (string: String, from: Int, to: Int) -> String {
        get {
            let startIndex = string.index(string.startIndex, offsetBy: from-1)
            let endIndex = string.index(string.startIndex, offsetBy: to)
            let range: Range<String.Index> = startIndex..<endIndex
            print(string[range])
            return String(string[range])
        }
    }
}
let rangeOfString = RangeOfString()
let string = "Simform Solutions"
rangeOfString[string,9,13]
print("")

// have one integer array and create one function which takes range as input and returns all elements between the range
class RangeOfArray {
    let array: [Int]
    
    init(array: [Int]) {
        self.array = array
    }
    
    subscript(from: Int, to: Int) -> [Int] {
        get {
            return Array(array[from...to])
        }
    }
}
let rangeOfArray = RangeOfArray(array: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110])
print(rangeOfArray[3,10])
print("")

// have one key value pair array. Create one function using subscript which takes key as input and returns it’s value
class DictionarySubScript {
    let dictArray = [
        [1:"Hello"],
        [2:"Hii"],
        [3:"Hola"],
        [4:"Namste"]
    ]
    subscript(key: Int) -> String {
        get {
            for value in dictArray {
                if let val = value.first(where: { $0.key == key})?.value {
                    return val
                }
            }
            return "Key Not Found"
        }
    }
}
var dictionarySubScript = DictionarySubScript()
print(dictionarySubScript[2])
print("")
// Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Song {
    var name: String
    var lable: String
    
    init(name: String, lable: String) {
        self.name = name
        self.lable = lable
    }
    
    func getSong() {
        print("\(name) by \(lable) movie name")
    }
}

class HipHop : Song {
    var singer: String
    var composer: String
    var feature: String
    
    init(name:String, lable: String, singer: String, composer: String, feature: String) {
        self.singer = singer
        self.composer = composer
        self.feature = feature
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer) rapper featuring \(feature) from \(composer) in \(lable) music Lable.")
    }
}

class Classical : Song {
    var singer: String
    var composer: String
    
    init(name:String, lable: String, singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer)  and composed by  \(composer) in \(lable) movie.")
        super.getSong()
    }
}
var classical = Classical(name: "AlbelaSajan", lable: "Hum Dil DE chuke Sanam", singer: "Shankar Mahadevan", composer: "Ismail Darbar")
classical.getSong()
var hipHop = HipHop(name:"Haseeno ka Dewana" , lable: "Kabil", singer: "Payal Dev", composer: "Raaftar ", feature: "HipHop")
hipHop.getSong()


