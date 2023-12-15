import Foundation

public struct Day2 {
    
    public static func Star1(_ input: String) -> Int {
        let lines = input.components(separatedBy: .newlines)
        
        var sum = 0
        
        for line in lines {
            let comps = line.components(separatedBy: CharacterSet.punctuationCharacters)
            var isPossible = true
            
            for i in 1..<comps.endIndex {
                let splitted = comps[i].components(separatedBy: " ")
                
                if splitted.count != 3 {
                    continue
                }
                
                switch splitted[2] {
                case "green":
                    if Int(splitted[1])! > 13 {
                        isPossible = false
                    }
                case "red":
                    if Int(splitted[1])! > 12 {
                        isPossible = false
                    }
                case "blue":
                    if Int(splitted[1])! > 14 {
                        isPossible = false
                    }
                default:
                    isPossible = false
                }
            }
            
            if isPossible {
                let game = comps[0].components(separatedBy: " ")
                
                if game.count != 2 {
                    continue
                }
                
                sum += Int(game[1]) ?? 0
            }
        }
        
        return sum
    }
    
    public static func Star2(_ input: String) -> Int {
        let lines = input.components(separatedBy: .newlines)
        
        var sum = 0
        
        for line in lines {
            let comps = line.components(separatedBy: CharacterSet.punctuationCharacters)
            
            var maxCounts = [
                "green": 0,
                "blue": 0,
                "red": 0
            ]
            
            for i in 1..<comps.endIndex {
                let splitted = comps[i].components(separatedBy: " ")
                
                if splitted.count != 3 {
                    continue
                }
                
                let numberOfBalls = Int(splitted[1]) ?? 0
                
                switch splitted[2] {
                case "green":
                    if numberOfBalls > maxCounts["green"]! {
                        maxCounts["green"]! = numberOfBalls
                    }
                case "red":
                    if numberOfBalls > maxCounts["red"]! {
                        maxCounts["red"]! = numberOfBalls
                    }
                case "blue":
                    if numberOfBalls > maxCounts["blue"]! {
                        maxCounts["blue"]! = numberOfBalls
                    }
                default:
                    continue
                }
            }
            
            sum += maxCounts.values.reduce(1, *)
        }
        return sum
    }
}
