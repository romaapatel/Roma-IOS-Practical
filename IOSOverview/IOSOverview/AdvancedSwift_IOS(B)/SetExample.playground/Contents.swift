//set example using its methods

import UIKit
var carsSet : Set = [ "Honda", "BMW" , "Nissan", "Hyundai"]
var bikeSet : Set = ["BMW" , "Honda" , "Appache"]
print ("Cars : \(carsSet)")
print ("Bikes : \(bikeSet)")
carsSet.insert("Honda")                                   //it will not add anything as honda is already in set
carsSet.insert("Audi")
print ("Updated cars Set after adding new member: \(carsSet)")
carsSet.remove("BMW")
print ("Updated cars Set after removing  member: \(carsSet)")
print ("Random member : \(carsSet.randomElement())")
print ("Union of Car and Bike set : ", carsSet.union(bikeSet))
print ("Intersection of Car and bike Set : " , carsSet.intersection(bikeSet))
print ("difference between to set Car and bike " , carsSet.subtracting(bikeSet))
print ("All elements of set car and bike " , carsSet.symmetricDifference(bikeSet))
print ("Subset of car and bike " , bikeSet.isSubset(of: carsSet))
print("")
// Function Example
print("")
func returnVotersName() -> String {               //function without Parameter
    return "Roma"
}
print(returnVotersName())

func multiplication(_ firstNumber : Int , _ secondNumber : Int)  {  // toomultiplication
    let multiplicaitonOfTwo = firstNumber * secondNumber
    print(multiplicaitonOfTwo)
}
multiplication(10 ,20)
print("")
//Variadic Functions
func variadic <N> (members : N ...){
    for numberOfMembers in members {
            print(numberOfMembers)
    }
}
variadic(members: 4)
variadic(members: 1,2,3,4)
variadic(members: "Swift" , "Kotlin" , "Java")
print("")
//EnumExample

enum Direction {
    case Left (angle: Int)
    case Right (angle: Int)
    case Up (angle: Int)
    case Down (angle: Int)
}

func getDirection (for way: Direction){
    switch way {
    case .Left(angle: let angle) where angle >= 30 && angle < 35:
        print("Your direction is left")
    case .Right(angle: let angle) where angle >= 40 && angle < 55:
        print("Your direction is Right")
    case .Up(angle: let angle) where angle >= 60 && angle < 75:
        print("Your direction is Up")
    case .Down(angle: let angle) where angle >= 80 && angle < 95:
        print("Your direction is Down")
    case .Left, .Right , .Up , .Down :
        print("There is no direction")
        
    }
}
getDirection(for: .Left(angle: 33))
getDirection(for: .Down(angle: 88))
print("")

// Class Example
class Student {
    var Name: String = ""
    var Age: Int = -1
    var Semester = -1
    var salary = -1
    
    func increaseSemester(){
        if Semester != -1 {
            Semester += 1
            print("Incremented semester is:\(Semester)")
        } else {
            print("Semester N/A")
        }
    }
}

var student = Student()
student.Age = 23
student.Name = "Roma"
student.Semester = 8
print(student.Name)
student.increaseSemester()
print("")

//Closure Example
let greet = {
    print("Hello Simform")
}
greet()

let greetUser = {(name : String) in             //closure with parameters
    print("Welcome to Simform ! \(name).")
}
greetUser("Roma")

let findSquare = { (number : Int ) -> (Int) in      //closure with paramter and returntype
    let squareOfNumber = number * number
    return squareOfNumber
}
var result = findSquare(2)
print("Square of Number : \(result)")
print("")

//example of Properties
class Property{
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

//Method in swift
class Calculations {
    var firsNumber: Int
    var secondNumber: Int
    var sum : Int
 
    init (firstNumber : Int, secondNumber : Int ) {
        self.firsNumber = firstNumber
        self.secondNumber = secondNumber
        sum = firstNumber + secondNumber                                    //practise on public,private example
        print("Sum \(sum)")
    }
    func divide(a : Int , b : Int) {
        sum = a / b
        print(sum)
    }
}
var calculations = Calculations(firstNumber: 10, secondNumber: 20)
calculations.divide(a: 50, b: 5)
calculations.divide(a: 12, b: 6)

//subscript example
print("")
class DaysOfWeek {
    let days = ["Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Saturday", "Sunday"]
    subscript(index: Int) -> String {
        get {
            if index < 8 {
                print(days[index-1])
                return days[index-1]
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
dayOfWeek.getDay(at: 1)

//public private internal exmaple
public class SomePublicClass {
    private var name = "Roma"
    private func privateFunction() {
        print("in private function \(name)")
    }
    func getName() {
        print("name : \(name)")
    }
    func samplefunction() {
        print("Hello ")
    }
}
private class SomePrivateClass : SomePublicClass {
    override func getName() {
        print("In Private Class ")
        super.getName()
    }                                                   //practise on variable
}
internal class SomeInternalClass : SomePublicClass {               //if class superclass is private then we cannot declare subclass internal class
    override func getName() {
        print("In internal class")
        
    }
}
var someInternalClass = SomeInternalClass()
someInternalClass.getName()
someInternalClass.samplefunction()
private var somePrivateClass = SomePrivateClass()
somePrivateClass.getName()
somePrivateClass.samplefunction()
print("")

//ErrorHandling
print("Error handling in swift")
class User {
    var name: String
    var availBalance: Int
    init(name: String, availBalance: Int){
        self.name = name
        self.availBalance = availBalance
    }
}

class Apple {
    var stock: Int
    var price: Int
    init(stock: Int, price: Int){
        self.stock = stock
        self.price = price
    }
}
let user = User(name: "Roma", availBalance: 50)
let iPhone = Apple(stock:10, price:100)

enum PurchaseError: Error{
    case LowBalance
    case NoStock
}
func Purchase(user: User, item: Apple) throws {
    if user.availBalance < item.price {
        throw  PurchaseError.LowBalance
    }
    if item.stock == 0 {
        throw PurchaseError.NoStock
    }
    user.availBalance -= item.price
    item.stock -= 1
    print("Item is purchased successfully by:\(user.name)")
    print("Available balance is:\(user.availBalance)")
    print("Stock left:\(item.stock)")
}

do {
    try Purchase(user: user , item: iPhone)
}   catch PurchaseError.LowBalance {
        print("Low Balance, Please add balance to purchase this item")
    }
    catch PurchaseError.NoStock {
        print("No stock available for this item")
    }
    catch {
    print("There is an Exception!!!")
}
print("")

// Type Casting
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Golmaal", director: "Rohit Shetty"),
    Song(name: "Main Koi aisa geet gaoon", artist: "Jatin Lalit"),
    Movie(name: "Phir hera Pheri", director: "Neeraj Vora"),
    Song(name: "Phir hera Pheri", artist: "Himesh Reshamiya"),
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}
print("Media library contains \(movieCount) movies and \(songCount) songs")

//downCasting
for item in library {
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
    }
}

//nested Types
print("Nested types in swift:::::")
struct Cards {

    enum Suit: Character {
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
    }
    enum Rank: Int {
       case two = 2, three, four, five, six, seven, eight, nine, ten
       case jack, queen, king, ace
       struct Values {
           let first: Int, second: Int?
       }
       var values: Values {
           switch self {
           case .ace:
               return Values(first: 1, second: 11)
           case .jack, .queen, .king:
               return Values(first: 10, second: nil)
           default:
               return Values(first: self.rawValue, second: nil)
           }
       }
   }
   let rank: Rank, suit: Suit
   var description: String {
       var output = "suit is \(suit.rawValue),"
       output += " value is \(rank.values.first)"
       if let second = rank.values.second {
           output += " or \(second)"
       }
       return output
   }
}
let theAceOfSpades = Cards(rank: .ace, suit: .spades)
print("theAceOfSpades: \(theAceOfSpades.description)")
print("")

//optional Chainnig
print("Optional Chaining in Swift:::::")
func OptionalChaining(year: Int) -> String? {
    switch year {
        case 2010 : return "School"
        case 2014 : return "In 10th standard"
        case 2016 : return "Pursuing Diploma"
        case 2019 : return "BE in Computer Engineering"
        default : return nil
    }
}
var call = OptionalChaining(year: 2019)?.uppercased()
print(call)

struct MutatingStruct {
    var greetingUser: String = "Good Morning"
    mutating func changeValue() {
        greetingUser = "Good Evening"
        print(greetingUser)
    }
    func changedvAlue() {
        print(greetingUser)
    }
}
var mutatingStruct = MutatingStruct()
print(mutatingStruct.greetingUser)
mutatingStruct.changeValue()
print("")

//weak variable
class Module {
   let name: String
   init(name: String) { self.name = name }
   var subModule: SubModule?
   deinit { print("\(name) Is The Main Module") }
}

class SubModule {
   let number: Int
   init(number: Int) { self.number = number }
   weak var module: Module?

   deinit { print("Sub Module with its topic number is \(number)") }
}
var toc: Module?
var list: SubModule?
toc = Module(name: "ARC")
list = SubModule(number: 4)
if let val = toc {
    val.subModule = list
}
if let val = list {
    val.module = toc
}
toc = nil
list = nil

//weak variable another example
class School {
    let schoolName : String
    weak var teacher : Teacher?
    init (schoolName : String) {
        self.schoolName = schoolName
        print ("\(schoolName) Welcome in it")
    }
    deinit {
        print("\(schoolName) in deinitialization")
    }
}
class Teacher {
    let teacherName : String
    var school : School?
    init (teacherName : String) {
        self.teacherName = teacherName
        print("\(teacherName) welcome in it ")
    }
    deinit {
        print("\(teacherName) in deinitialization")
    }
}
 weak var teacherObj : Teacher?
 weak var schoolObj : School?
teacherObj = Teacher(teacherName: "Anjalee")
schoolObj = School(schoolName: "Navrang")
teacherObj?.school = schoolObj
schoolObj?.teacher = teacherObj
schoolObj = nil
teacherObj = nil
