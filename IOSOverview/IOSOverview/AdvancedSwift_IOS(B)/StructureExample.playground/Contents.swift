//Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.

import Metal
struct Work {
    var workLocation : String
    var workHours : Int
    var projectNames : [String]
    func getProjectNames() -> [String] {
        for projectName in projectNames {
            print(projectName)
        }
        return projectNames
    }
}
let work = Work(workLocation: "Ahmedabad", workHours: 8, projectNames: ["h2h", "SocietySter", "Grandma's Way"])
print(work.workLocation)
print(work.workHours)
work.getProjectNames()
print("")

// Create a structure example which demonstrates use of initializer in structures.
print("Output of Second")
struct StudentMarks {
    var maths: Int
    var science : Int
    var english : Int
    init(maths : Int, science : Int, english : Int) {
        self.maths = maths
        self.science = science
        self.english = english
    }
}
let studentMarks = StudentMarks (maths: 80, science: 85, english: 90)
print("Maths : \(studentMarks.maths) ")
print("Science : \(studentMarks.science) ")
print("English : \(studentMarks.english)")
print("")

//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.
print("Output of Third")
struct Rectangle {
    var length : Double
    var breadth : Double
    init(length : Double, breadth : Double) {
        self.breadth = breadth
        self.length = length
    }
}
var rectangle = Rectangle(length: 2, breadth: 4)
print("Area = \(rectangle.length * rectangle.breadth)")
rectangle.length = 4
rectangle.breadth = 6
print("Area = \(rectangle.length * rectangle.breadth)")
print("")

//Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//             Odd numbers are: [1, 3, 5, 9, 7]
//
print("Output of Forth")
struct OddEven {
    var numbers: [Int]
    init(number: [Int]) {
        self.numbers = number
    }
    func differentiate() -> (odd: [Int], even:[Int]) {
        var oddArray: [Int] = []
        var evenArray: [Int] = []
        for value in numbers {
            if value % 2 == 0 {
                evenArray.append(value)
            } else {
                oddArray.append(value)
            }
        }
        return (odd: oddArray, even: evenArray)
    }
}
let oddEven = OddEven(number: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
print("Even numbers : \(oddEven.differentiate().even)")
print("Odd numbers : \(oddEven.differentiate().odd)")
print("")

/*Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
Consider two persons array for Joe and Harry. But in your code Its size can be vary.
Output be like: Name: Joe, Gender: Male, Age: 27
Name: Harry, Gender: Male, Age: 21 */
print("Output of Fifth")
struct PersonDetails {
    var name: String
    var gender: String
    var age: Int
}
let person = [PersonDetails(name: "Joe", gender: "Male", age: 27), PersonDetails(name: "Harry", gender: "Male", age: 21)]
for details in person {
    print("Name : \(details.name) Gender : \(details.gender) Age : \(details.age)")
}
print("")

//Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
print("Output of Seventh")
struct Color {
    var colorName = "REd"
}
var color = Color()
var chooseColor = color               //it takes value
chooseColor.colorName = "Black"
print("Color : \(color.colorName)")
print("Color : \(chooseColor.colorName)")
print("")
//Try to figure out basic difference between class and structures and give a demo for same.
class DifferenceClass {
     var takeString: String
    
     init(takeString: String) {
         self.takeString = takeString
     }
 }
 class Child : DifferenceClass {
     var childVar = "Hello"
 }
 struct DiffrenceStruct {
     var takeString: String
 }
// You need to add init method for initializer inside class but you do not need to add init inside of struct
//Class supports Inheritance while struct does not support inheritance
//  Class is a refrence type and struct is a value type
let classVar = DifferenceClass(takeString: "Hello simform")      //mainValueofClass
var structVar = DiffrenceStruct(takeString: "Hi")        //mainValue of Structure
let childClass = Child(takeString: "CHidl")
var classCopyVar = classVar
classVar.takeString = "Cpiy copy copy"
var structCopyVar = structVar
structCopyVar.takeString = "OPPPPPPPSss"
print("main output \(classVar.takeString)")
print("main output \(structVar.takeString)")
print(classCopyVar.takeString)
print(structCopyVar.takeString)
