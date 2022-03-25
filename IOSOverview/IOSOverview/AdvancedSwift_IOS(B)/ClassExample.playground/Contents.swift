//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class Employee {
    var name = "Roma"
    var age = 23
}
let employee = Employee()
print("Name : \(employee.name)")
print("Age :  \(employee.age)")
print("")

//Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
print("Output of Second")           //Initializaation Done
class Student {
    var name: String?
    var college: String?
    var department: String?
    init (name: String , college: String) {
        self.name = name
        self.college = college
        print("Name : \(name),\nCollege : \(college)")
    }
    init (name: String , department: String) {
        self.name = name
        self.department = department
        print("Department : \(department)")
    }

}
let student = Student(name: "Roma", college: "GIT")
let studentOtherDetails = Student(name: "Roma", department: "Computer")
print("")

// Create a swift class without initializers and access (write, read) its properties using instance of class.
print("Output of Third ")
class College {
    var numberOfStudents = 576
    var collegeId = 07
}
let college = College()
print("Number of Students in College \(college.numberOfStudents)")
print("College id : \(college.collegeId)")
college.numberOfStudents = 789
college.collegeId = 08
print("Updated Number of Students in College \(college.numberOfStudents)")
print("Updated College id : \(college.collegeId)")
print("")

//Create a swift class which is having code to return square of given number and access this code using class instance.
print("Output of Forth ")
class Square {
    func getSquareOfNumber(number: Int) {
        let squareOfNumber = number * number
        print("Square of Number is \(squareOfNumber)")
    }
}
let square = Square()
square.getSquareOfNumber(number: 2)
print("")

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
print("Output of Fifth ")                   //Inheritance
class StudentDetail {
    var name: String?
}
class StudentCollege: StudentDetail {
    var collegeName: String?
}
class StudentID: StudentCollege {
    var studentId: Int?
}
let studentId = StudentID()
studentId.studentId = 12
studentId.collegeName = "GIT"
let studentCollege = StudentCollege()
studentCollege.name = "Roma"
print("Name : \(studentCollege.name) , Student ID: \(studentId.studentId) , College Name : \(studentId.collegeName)")
print("")

//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.
print("Output of Sixth ")
class Circle {
    func areaOfshape() {
        let radiusOfCircle = 2
        let areaOfCircle = Int(3.14) * radiusOfCircle * radiusOfCircle
        print("Area Of Circle \(areaOfCircle)")
    }
}
class Rectangle : Circle {
    override func areaOfshape() {
        super.areaOfshape()
        let lengthOfRectangle = 4
        let widthOfRectangle = 6
        let areaOfRectangle = lengthOfRectangle * widthOfRectangle
        print("Area Of Square \(areaOfRectangle)")
    }
}
let rectangle = Rectangle()
rectangle.areaOfshape()
print("")
//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//example:  let instance = Example(value: 5)
//    let result = instance.doPower(power: 3)
//then it should return 5's 3 power (125)
print("Output of Seventh ")
class Power {
    var value: Int
    init(value: Int) {
        self.value = value
    }
    func getPower(power: Int) -> Int {
        var powerResult = 1
        for _ in 1...power {
            powerResult *= value
        }
        print("\(value) raised to \(power) is \(powerResult)")
        return powerResult
    }
}
let power = Power(value: 5)
power.getPower(power: 3)
print("")

//Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
print("Output of Eight ")
class Vehicles {
    var topSpeed: Int
    var engineCC: Int
    
    init (topSpeed: Int, engineCC: Int) {
        self.topSpeed = topSpeed;
        self.engineCC = engineCC
        print("In Vehicle Class ,topSpeed \(topSpeed), engineCC \(engineCC)")
    }
    
    func startVehicle() {
        print("Starting Vehicle")
    }
}
class Car : Vehicles {
    var carType: String
    var carName: String
    
    init (topSpeed: Int, engineCC: Int, carType: String, carName: String) {
        self.carName = carName
        self.carType = carType
        print("Car Name : \(carName), Car Type: \(carType)")
        super.init(topSpeed: topSpeed, engineCC: engineCC)
        print("In Car Class \(topSpeed) , \(engineCC)")
    }
    
    override func startVehicle() {
        print("Starting car using key Self Start or Push Button")
    }
    
    func openWindows() {
        print("Opening Windows")
    }
}

class Bike : Vehicles {
    var bikeType: String
    var bikeName: String
    
    init(topSpeed: Int, engineCC: Int, bikeType: String, bikeName: String) {
        self.bikeName = bikeName
        self.bikeType = bikeType
        super.init(topSpeed: topSpeed, engineCC: engineCC)
        print("In Bike Class \(topSpeed) , \(engineCC)")
    }
    
    override func startVehicle() {
        print("Starting bike by first turning on the key and pushing slef start or kick start")
    }
    
    func applyStand() {
        print("applying stand")
    }
}
let bike = Bike(topSpeed: 157, engineCC: 198, bikeType: "Sports", bikeName: "Appache")
let car = Car(topSpeed: 180, engineCC: 1197, carType: "Hatchbag", carName: "Baleno")
print("")

//Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//  Person1.greet() // This should print “Hello Joe”
print("Output of Nine ")
class Person {
    func greetUser(name : String) {
        print("Welcome to Simform ! \(name).")
    }
}
let person = Person()
person.greetUser(name: "Roma")
print("")
//Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
//// Consider ‘a’ as string property of example class.
class Color {
    var colorName = "REd"
}
let color = Color()
let colorobject = color           //this will take the address/refernce of object
colorobject.colorName = "Black"
print("Color : \(color.colorName)")
print("Color : \(colorobject.colorName)")
