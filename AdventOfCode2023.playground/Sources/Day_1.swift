import Foundation

public struct Day1 {
    public static func Star1(_ input: String) -> Int {
        let lines = input.components(separatedBy: .newlines)
        
        var numberArray = [Int]()
        
        for line in lines {
            let num1 = line.first { $0.isNumber }
            let num2 = line.last { $0.isNumber }
            numberArray.append(Int("\(num1 ?? "0")\(num2 ?? "0")") ?? 0)
        }
        return numberArray.reduce(0, +)
    }
    
    public static func Star2(_ input: String) -> Int {
        
        let replacements = [
            "one": "one1one",
            "two": "two2two",
            "three": "three3three",
            "four": "four4four",
            "five": "five5five",
            "six": "six6six",
            "seven": "seven7seven",
            "eight": "eight8eight",
            "nine": "nine9nine"
        ]
        
        var editedInput = input
        
        for replacement in replacements {
            editedInput = editedInput.replacingOccurrences(of: replacement.key, with: replacement.value)
        }
        
        let lines = editedInput.components(separatedBy: .newlines)
        
        var numberArray = [Int]()
        
        for line in lines {
            let num1 = line.first { $0.isNumber }
            let num2 = line.last { $0.isNumber }
            numberArray.append(Int("\(num1 ?? "0")\(num2 ?? "0")") ?? 0)
        }
        return numberArray.reduce(0, +)
    }
}
