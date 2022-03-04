//Extra Example of append and insert(Insert string at particular place)
var studentArray = ["Kotlin","Swift","java"]
print(studentArray)
studentArray.append(contentsOf: ["php","SQL"])
print(studentArray)
studentArray.insert("C++", at: 2)
print(studentArray)
var firstElementOfArray = studentArray.first ?? "Roma" // there may be chances that first element of array may be empty so thats why it uses optional
print(firstElementOfArray)
var lastElementOfArray  = studentArray.last
print(lastElementOfArray ?? "last")
studentArray.remove(at: 2)
print(studentArray)
studentArray.removeLast()
print(studentArray)
print("")

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal.The array length must be 1 or more

let arrayList = [1,3,4,6,7,8,9,0,1]
if (arrayList.first == arrayList.last) {
    print ("Both first and last element are same ")
} else if (arrayList.first != arrayList.last) {
    print ("Elements are different\n ")
}

//Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
print("")
var secondArrayList = [1,2,3,4]
var arrayLength = secondArrayList.count
var suffix: Int = secondArrayList[arrayLength - 1]
var newArray: [Int] = []
if secondArrayList.isEmpty {
    print("Array is empty")
} else {
    print("Array is")
    for _ in 0...(arrayLength * 2)-1 {
        newArray.append(0);
    }
    newArray[newArray.count - 1] = suffix
    print(newArray)
}

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
print("")
var thirdArrayList = [28,34,55,78]
var checkArrayLength = thirdArrayList.count
if checkArrayLength < 2 {
    print("There is only single element: \(thirdArrayList)" )
} else if checkArrayLength > 2 {
    print("Elements are:\n \(thirdArrayList.prefix(2))" )
}


//Write a Swift program to take one array and find out maximum number from that array
print("")
var max : Int? = thirdArrayList.max()
if let val = max {
    print("Maximum from Array is \(val)")
}

//Write a Swift program to take one array and sort it in desending order.
public var arrayForSorting = [234,456,789,01]
print(arrayForSorting.sorted().reversed())
let reversedArray = arrayForSorting.sorted()
print(reversedArray)
                                               
                                                


