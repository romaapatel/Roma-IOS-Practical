//Print the powers of 2 that are less than or equal to N.
var numberForLoop : Int = 100
var powerOFTwo = 1
print("Power of 2 is:" )
for _ in 1...numberForLoop {
    if (powerOFTwo * 2 > numberForLoop) {
        break
    } else {
        powerOFTwo = powerOFTwo * 2
        print(powerOFTwo)
    }
}

//Given an integer N draw a square of N x N asterisks. Look at the examples.
print("")
print("square of N x N asterisks.")
var number : Int = 3
for _ in 1...number {
    for _ in 1...number {
        print("*", terminator: " ")
    }
    print("")
}

//Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
print("")
print("triangle of asterisks")
var numberOfLines : Int = 5
for firstLineCount in 1...numberOfLines {
    for _ in 1...firstLineCount{
        print("*", terminator:" ")
    }
    print("")
}

//Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks
print("")
var lineNumber : Int = 6
var spacingVariable = 0
print("Pyramid")
while spacingVariable < lineNumber {
    let spaces = String(repeating: " ", count: lineNumber - spacingVariable - 1)
    let stars = String(repeating: "*", count: 2 * spacingVariable + 1)
    print(spaces + stars)
    spacingVariable += 1
}

//You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
print("")
print("Prime number")
var primeNumber = 18
var k = 0
for i in 1...primeNumber / 2 {
    if primeNumber % i == 0 {
        k += 1
        print(i)
    }
}
if (k > 2) {
    print((primeNumber), "is not prime")
} else {
    print((primeNumber), "is prime")
}

