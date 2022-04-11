//closure is self contained blocks of functionality that can be passed around and used in your code

let welcomeMessage = { (name : String) in
    print("Hello!! Welcome to Simform")
}
welcomeMessage("Roma")

//enum is a user defined data type that has a fixed set of related value.

enum Greeting : String {
    case morning
    case night
    case afternoon
}
let greetUser = Greeting.night
print(greetUser)

// guard let and if let

var squareOfNumber : Int?
squareOfNumber = 10

if let number = squareOfNumber {
    print("Square of \(number * number)")
} else {
    print("No Value")
}

func squareOfNumber(number : Int?) {
    guard let number = number else {
        print("no Value")
        return
    }
    print("Square of Number is \(number * 2)")
}
squareOfNumber(number: squareOfNumber)

//optional Chainning
class Exam {
    var student : Toppers?
}
class Toppers {
    var name = "Intelligent"
}
let exam = Exam()
if let studentName = exam.student?.name {
    print("Name \(studentName)")
} else {
    print("Student Name not retrived")
}

var user = { (fname : String , name : String) in
    print( "Morning \(fname) \(name)")
}
user("patel"," Roma")

enum User : String {
    case roma
    case brijesh
    case shubham
}
let welcomeMessge = User.roma
print("Welcom \(welcomeMessge)")

//methods
class Calculator {
    var firstNumber = 10
    var secondNumber = 20
    var sum : Int {
    get {
         firstNumber + secondNumber
    }
    set {
        firstNumber + secondNumber
    }
  }
}
var calculation = Calculator()
print("Get Value ", calculation.sum)
calculation.firstNumber = 30
calculation.secondNumber = 20
print("Set Value ", calculation.sum)

//closure with captured list
func closureFuntion() {
    var number = 10
    
    let closure  = { [number] in
       print("\(number)")
    }
    closure()
    number = 20
    closure()
}
closureFuntion()

//subscriptes
class Days {
    var days = ["sunday" , "Monday" , "tuesday"]
    subscript(index : Int) -> String {
        return days[index]
    }
}
var daysOfWeek = Days()
print(daysOfWeek[0])

//extension
extension Calculator {
    func sub() {
        print(firstNumber - secondNumber)
    }
}
calculation.sub()

//closures capture value
//Capture lists: The list of values that you want to remain unchanged at the time the closure is created.
var square :Int?
if let number = square  {
    print("Value \(number)")
} else {
    print("No Value")
}

func sqaureNumber() {
guard let fnumber = square  else {
    print(" guard let No value")
    return
}
}
sqaureNumber()



