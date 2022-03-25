//Add a character in a string at 5th position
extension String {
    mutating func addCharAtFifthPosition(char : Character) {
        let charIndex = self.index(self.startIndex, offsetBy: 4)
        if self.count >= 5 {
            self.insert(char, at: charIndex)
        }
    }
    //Replace one character with other in a string
    mutating func replaceOneCharWithOther(from replacingChar : Character, to newChar : Character ) {
        if self.contains(replacingChar) {
            self = String(self.map {
            $0 == replacingChar ? newChar : $0
            })
        }
    }
    //remove white space
    mutating func removeWhiteSpaces() {
           self =  self.filter({ $0 != " " })
       }
    //get number of words in string
       mutating func getWordCount() -> Int {
           let components = self.components(separatedBy: .whitespaces)
           let words = components.filter { !$0.isEmpty }
           return words.count
       }
}
var string = "Simfrm Solutions"
print("String before adding at 5th position \(string)")
string.addCharAtFifthPosition(char: "o")
print(string)
string.replaceOneCharWithOther(from: "o", to: "O")
print("\nCharacter is replaced \(string)")
string.getWordCount()
print("\nNumber of Words \(string)")
print (string.getWordCount())
string.removeWhiteSpaces()
print("\nWhite spaces removed \(string)")

