/*
 •    Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
Example. It should return Monday or mon if I pass parameter 1 for get day name.
*/
enum Days: Int {
      case firstValue = 1
      case secondValue = 2
      case thirdValue = 3
      case fourthValue = 4
      case fifthValue  = 5
      case sixthValue = 6
      case seventhValue = 7
}
func getWeekName (weekNumber : Int) {
    switch weekNumber {
    case Days.firstValue.rawValue:
        print("Its monday")
    case Days.secondValue.rawValue:
        print("Its tuesday")
    case Days.thirdValue.rawValue:
        print("Its wednesday")
    case Days.fourthValue.rawValue:
        print("Its thursday")
    case Days.fifthValue.rawValue:
        print("Its friday")
    case Days.sixthValue.rawValue:
        print("Its saturday")
    case Days.seventhValue.rawValue:
        print("Its sunday")
    default :
        print("Invalid day number ")
    }
}
getWeekName(weekNumber: 4)

// Create one enumeration program to return number of days in a month
enum Months : Int {
    case January = 0
    case Feruary
    case March
    case April
    case May = 4
    case June = 5
    case July = 6
    case August = 7
    case Septmber = 8
    case October = 9
    case November = 10
    case December = 11
}
func getDaysInMonth(month: Months) {
    let array  = [30,28,31,30,31,30,31,31,30,31,30,31]
    switch month {
    case Months.January :
        print(array[Months.January.rawValue])
    case Months.Feruary :
        print(array[Months.Feruary.rawValue])
    case Months.March :
        print(array[Months.March.rawValue])
    case Months.April :
        print(array[Months.April.rawValue])
    case Months.May :
        print(array[Months.May.rawValue])
    case Months.June :
        print(array[Months.June.rawValue])
    case Months.July :
        print(array[Months.July.rawValue])
    case Months.August :
        print(array[Months.August.rawValue])
    case Months.Septmber :
        print(array[Months.Septmber.rawValue])
    case Months.October :
        print(array[Months.October.rawValue])
    case Months.November :
        print(array[Months.November.rawValue])
    case Months.December:
        print(array[Months.December.rawValue])
    }
}
getDaysInMonth(month: Months.April)

// Write a swift program to demonstrate string type enum.
enum ColorName: String {
  case black
  case silver
  case gray
  case white
  case maroon
  case red
}
let chooseColor = ColorName.gray
print(chooseColor)

// Write a swift program for enum with raw values.
enum CarBrand: String {
    case Mercedes = "high Value cars"
    case Toyota = " high Quality and Value"
    case Volkswagen = "Low Budget car"
    case Ford = "High Budget car"
    case Honda = " well built car "
}
func carKnownFor(brand: CarBrand) -> String {
    return brand.rawValue
}
print(carKnownFor(brand: .Ford))
print(carKnownFor(brand: .Mercedes))

//Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory)
enum Planet: CaseIterable {
    case mercury , venus, earth, mars, jupiter, saturn, uranus, neptune
}
for planet in Planet.allCases {
    print("planet: \(planet)")
}

//Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).
enum SocialMediaPlatform {
    case twitter(followers: Int)
    case youtube(subscribers: Int)
    case instagram(followers: Int)
    case linkedIn(connections: Int)
    case facebook(friends: Int)
}
func socialmedia (for platform: SocialMediaPlatform) {
    switch platform {
    case .twitter(let followers) where followers > 10_000:
        print("Eligible for sponsored Tweet.")
    case .youtube(let subscribers) where subscribers > 25_000:
        print("Eligible for sponsored video.")
    case .instagram(let followers) where followers > 10_000:
        print("Eligible for sponsored Post.")
    case .linkedIn(let connections) where connections > 1000:
        print("Eligible for sponsored Post.")
    case .facebook(let friends) where friends > 5000:
        print("Eligible for sponsored Post and Status Update.")
    case .instagram, .linkedIn, .twitter, .youtube, .facebook:
        print("Not eligible for sponsorship")
    }
}
