/*
 You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
 Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
 If you can cook bacon and eggs print you can cook bacon and eggs.
 If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.
 */
var eggAge : Int = 21
var baconAge : Int = 7
if baconAge <= 7 && eggAge <= 21 {
    print("You can cook bacon and eggs as days are: \(eggAge) \(baconAge)")
} else if baconAge <= 7 && eggAge > 21 {
    print("You only cook bacon as eggs are expired: days \(eggAge) \(baconAge)")
} else if baconAge > 7 && eggAge <= 21 {
    print("You only cook eggs as bacon has expired: days \(eggAge) \(baconAge)")
} else if baconAge > 7 && eggAge > 21 {
    print("You cannot cook bacon and eggs as both are expired: days \(eggAge) \(baconAge)")
}

/*
 You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
 The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.
 */
var year : Int = 2020
if year % 400 == 0 {
    print("\(year) is leap year")
} else if year % 100 == 0 {
    print("\(year) is not a leap year")
} else if year % 4 == 0 {
    print("\(year) is a leap year")
} else {
    print("\(year) is not a leap year")
}

/*
 You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
  100 represents full health
  0 represents dead.
 You want to add regenerating health to the game using the following rules:
 */
var currentHp : Int = 75
var updateHp : Int = 0
if currentHp != 0 {
    if currentHp <= 20 {
        updateHp = 20
    } else {
        if currentHp % 10 == 0 {
            updateHp = currentHp + 5
        } else {
            updateHp = ((currentHp/10) * 10) + 10
        }
    }
  print(updateHp)
} else {
    print("You are dead")
}

/*You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
You are also given your grade in the class stored in a variable yourGrade of type Double.
Print above average if your grade is greater than the class average or below average” otherwise.
 Note: the average of the class includes your grade.
*/
let grade1 = 7.0
let grade2 = 9.0
let grade3 = 5.0
let MyGrade = 8.0
var avg = (grade1 + grade2 + grade3 + MyGrade) / 4
print(MyGrade >= avg ? "Above average" : "below average")               //turneryOperatorUsed
print("Average is: \(avg)")
print("My Grade is: \(MyGrade)")

/*
 You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
 You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
 Print the total cost of the meal.
 */
var mealCost : Double = 400.15
var tip : Int = 10
var percent : Double
percent = (Double(tip) / 100) * mealCost
print(percent)
print("Tip is: \(percent + mealCost)")




