let colors : [String] = ["red", "green", "blue"]
if let redIndex = colors.firstIndex(where: {$0.elementsEqual("red")}),
  let greenIndex = colors.firstIndex(where: {$0.elementsEqual("green")}) {
      print("red is present in palette at position \(redIndex) and green is present in palette at position \(greenIndex)")
} else {
    print(" are not present in palette")
}

func checkColorInPalette() {
  let colors : [String] = ["red", "green" ,"blue"]
  guard let index = colors.firstIndex(where: {$0.elementsEqual("green")}) else {
    print("green is not present in palette")
    return
  }
  print("green is present in palette at position \(index)")
}

struct pairOfOptionalAndNonOptionalAndImplicitUnwrapped {
    var word1 : String?
    var word2 : String
    var word3 : String!
    init (a:String, b: String, c: String) {
        self.word1 = a // Line A
        self.word2 = b // Line B
        self.word3 = c // Line C
    } //Line BBBB
    func equal() ->Bool {
        return word1 == word2 + word3
    }
}
let wordParts = pairOfOptionalAndNonOptionalAndImplicitUnwrapped (a:"partTwo", b: "part", c:"Two")
wordParts.equal() // Line CCCC
