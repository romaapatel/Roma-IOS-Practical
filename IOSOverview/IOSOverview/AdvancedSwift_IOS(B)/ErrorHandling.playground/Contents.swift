//Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum PasswordException : Error {
case passwordTooShortException(currentLength: Int)
    case passwordEmptyException
}
func getPassword(password: String) throws -> Bool {
    if password .isEmpty {
        throw PasswordException.passwordEmptyException
    } else if password.count < 8{
        throw PasswordException.passwordTooShortException(currentLength : password.count)
    }
    return true
}
let password = "Roma"
do {
    try getPassword(password: password)
} catch PasswordException.passwordEmptyException {
    print("Password must be filled")
} catch PasswordException.passwordTooShortException(let currentLength) {
    print("Password must be greater than 8 and entered password length is of \(currentLength) characters")
} catch {
    print("error occured ")
}

//Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum CartExeption : Error {
    case StockNotAvailableExeption(desiredCartSize: Int, currentStock: Int)
}
func checkStocks(desiredCartSize: Int) throws -> Bool {
    if desiredCartSize > getCurrentStock() {
        throw CartExeption.StockNotAvailableExeption(desiredCartSize: desiredCartSize, currentStock: getCurrentStock())
    }
    return true
}
func getCurrentStock() -> Int {
    return 20
}
do {
    try checkStocks(desiredCartSize: 25)
} catch CartExeption.StockNotAvailableExeption(let desiredCartSize, let currentStock) {
    print("Sorry to tell you that we can not fullfill your requirements of your desired quantity.\nYou have requested for \(desiredCartSize) and our current stock is \(currentStock) \nYou can order \(currentStock) products maximum.")
} catch {
    print("Error occured")
}

