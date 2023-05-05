import UIKit
import Foundation


//MARK: - 8kyu

/*
Miles per gallon to kilometers per liter
*/

func converter(mpg: Int) -> Double {
  let result = 4.425  - 1.6
  return Double(mpg) / result
}

//---------------------------------------------------

/*
Function 2 - squaring an argument
*/

func square(_ num: Int) -> Int {
  Int(pow(Double(num),2.0))
}

//---------------------------------------------------

/*
You Can't Code Under Pressure #1
*/

func doubleInteger(_ num: Int) -> Int {
  num * 2
}

//---------------------------------------------------

/*
Grasshopper - Messi goals function
*/

func goals(laLigaGoals: Int, copaDelReyGoals: Int, championsLeagueGoals: Int) -> Int {
  laLigaGoals + copaDelReyGoals + championsLeagueGoals
}

//---------------------------------------------------

/*
Volume of a Cuboid
*/

func getVolumeOfCuboid(length: Int, width: Int, height: Int) -> Int {
  length * width * height
}

//---------------------------------------------------

/*
BASIC: Making Six Toast.
*/

func sixToast(_ num: Int) -> Int {
  abs(num - 6)
}

//---------------------------------------------------

/*
Third Angle of a Triangle
*/

func otherAngle(a: Int, b: Int) -> Int {
  180 - (a + b)
}

//---------------------------------------------------

/*
Thinkful - Logic Drills: Traffic light
*/

func update_light(_ current: String) -> String {
  switch current {
    case "green": return "yellow"
    case "yellow": return "red"
    default: return "green"
  }
}

//---------------------------------------------------








//MARK: - 7kyu

/*
Simple Fun #2: Circle of Numbers
*/

func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
  var number = 0
  if  fst >= n / 2 {
   number += fst - (n / 2)
  } else if fst <= n / 2 {
   number += fst + (n / 2)
  }
 return number
}

//---------------------------------------------------

/*
Partial Word Searching
*/
func wordSearch(_ str:String, _ arr:[String]) -> [String] {
  return arr.filter{ $0.lowercased().contains( str.lowercased())} != [] ? arr.filter{ $0.lowercased().contains( str.lowercased()) }  : ["Empty"] 
}

//---------------------------------------------------

/*
Functional Addition
*/

func add(_ n: Int) -> ((Int) -> Int) { 
  func addOne (_ m: Int) -> Int {return n + m}
  return addOne
}

//---------------------------------------------------

/*
Simple Fun #152: Invite More Women?
*/

func inviteMoreWomen(_ arr: [Int]) -> Bool {
   arr.reduce(0, -) >= 0 ? false : true
}

//---------------------------------------------------

/*
Drying Potatoes
*/

func nbDig(_ n: Int, _ d: Int) -> Int {
   (0...n).map{ "\($0 * $0)".filter {$0 == Character("\(d)") } }.flatMap{$0}.count
}

//---------------------------------------------------

/*
Count the Digit
*/

func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
   w0 * (100 - p0) / (100 - p1) 
}

//---------------------------------------------------

/*
Counting in the Amazon
*/

func countArare(_ n: Int) -> String {
  var str = [String]()
  if n % 2 == 0 {
    for _ in 0..<n / 2  {
      str.append("adak")
    }
    
  } else {
    for _ in 0..<n / 2 + 1 {
      str.append("adak")
    }
  }

  n % 2 == 1 ? str[str.count - 1] = "anane" : nil
  
  return str.joined(separator: " ")
}

//---------------------------------------------------

/*
Balanced Number (Special Numbers Series #1 )
*/

func balancedNumber(_ number: Int) -> String {
  let arr = String(number).compactMap{$0.wholeNumberValue} 
  var arrLeft = [Int]()
  var arrRight = [Int]()
 
  if arr.count % 2 == 0 {
    arrLeft.append( arr.prefix(arr.count / 2 - 1).reduce(0, +) )  
    arrRight.append( arr.suffix(arr.count / 2 - 1).reduce(0, +) )
  } else {
    arrLeft.append( arr.prefix(arr.count / 2 ).reduce(0, +)  )
    arrRight.append( arr.suffix(arr.count / 2 ).reduce(0, +)  ) 
  }
  return arrLeft == arrRight ? "Balanced" : "Not Balanced"
}

//---------------------------------------------------

/*
Printer Errors
*/

func printerError(_ s: String) -> String {
   "\(s.filter{!"abcdefghijklm".contains($0)}.count)/\(s.count)"
}

//---------------------------------------------------

/*
Sum of Minimums!
*/

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
  var minArr = numbers.map{$0.min()! }
  return minArr.reduce(0, +) 
}

//---------------------------------------------------

/*
Disarium Number (Special Numbers Series #3)
*/

func disariumNumber(_ number: Int) -> String {
  let num = String(number).compactMap{$0.wholeNumberValue}.enumerated().map{ pow(Double($1), Double($0 + 1 ) )  }.reduce(0, +) 
  return Int(num) == number ? "Disarium !!" : "Not !!"
}

//---------------------------------------------------

/*
Is It Negative Zero (-0)?
*/

func isNegativeZero(_ n: Float) -> Bool {
      String(n).isEqual(to: "-0.0") ?  true : false
}

//---------------------------------------------------

/*
Sort Out The Men From Boys
*/

func menFromBoys(_ arr: [Int]) -> [Int] {
   Set(arr).filter { $0 % 2 == 0  }.sorted (by: <) + Set(arr).filter { $0 % 2 != 0  }.sorted (by: >)
}

//---------------------------------------------------

/*
Find all non-consecutive numbers
*/

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {  
  var array = [(Int, Int)]()
  for i in 0..<arr.count - 1 {
    if arr[i] + 1 != arr[i + 1] {
      array.append( (i + 1, arr[i + 1]) )
    }
  }
  return array
}

//---------------------------------------------------

/*
Easy wallpaper
*/

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
               "six", "seven", "eight", "nine", "ten",
               "eleven", "twelve", "thirteen", "fourteen", "fifteen",
               "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    let num = Int ( (l * h * 2 + w * h * 2) * 1.15 / 5.2  )
    return  l * w * h == 0.0 ? "zero" : numbers[num + 1]  
}

//---------------------------------------------------

/*
Simple Fun #74: Growing Plant
*/

func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
  var day = 0
  var  h = 0
    while h <= desiredHeight {
        h += upSpeed 
        day += 1
        if h <  desiredHeight {
            h -= downSpeed
        } else {
            return day
          }
  }
  return day
}

//---------------------------------------------------

/*
Going to the cinema
*/

func movie(card: Double, ticket: Double, perc: Double) -> Int {
var dayA = 0.0
var dayB = card
var q = 0.0 
    while dayB.rounded(.up) >= dayA {
        q += 1.0
        dayA += ticket
        dayB += ticket * pow(perc, q)
  }
  return Int(q)
}

//---------------------------------------------------

/*
Numbers with this digit inside
*/

func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
  let arr = d > x ? [0, 0, 0] : Array(d...x).filter { String($0).contains("\(d)") } 
  
  let count = Int64( arr.filter {$0 != 0}.count   )
  let sum = Int64(arr.reduce(0, +) )
  let product = Int64( arr.filter {$0 != 0}.reduce(1, *) ) == 1 ? 0 : Int64( arr.filter {$0 != 0}.reduce(1, *) )
  
  return [count ,sum, product ]
}

//---------------------------------------------------

/*
Euclidean distance in n dimensions
*/

func euclideanDistanceBetween(_ point1: [Double], and point2: [Double]) -> Double {
  let sum = zip(point1, point2).map({ pow($0.0 - $0.1, 2.0) }).reduce(0.0,+)
  return round(100*sqrt(sum)) / 100
}

//---------------------------------------------------

/*
Strong Number (Special Numbers Series #2) (Swift)
*/

func strongNumber(_ number: Int) -> String {
    let num = String(number).compactMap{$0.wholeNumberValue}
    let count = num.map{Array(1..<$0 + 1)}.map{$0.reduce(1, *)}.reduce(0, +)
    return  count == number ? "STRONG!!!!" : "Not Strong !!"
}

//---------------------------------------------------

/*
Special Number (Special Numbers Series #5)
*/

func specialNumber(_ number: Int) -> String {
  let arr = String(number).compactMap{$0.wholeNumberValue}.filter{$0 > 5 } 
  return arr.isEmpty ?  "Special!!" : "NOT!!"
}

//---------------------------------------------------

/*
Billiards triangle
*/

func pyramid(_ balls: Int) -> Int{
    Int( (sqrt(Double(balls) * 8.0 + 1.0) - 1.0) / 2.0 )
}

//---------------------------------------------------

/*
Waiting room  pazzle
*/

func lastChair(_ n: Int) -> Int {
  return n - 1
}

//---------------------------------------------------

/*
Stacked Balls - 2D
*/

func stackHeight2D(_ layers: Int) -> Double {
   layers != 0 ? ( Double(layers - 1) * (sqrt(3.0) / 2.0)) + 1.0 : 0.0
}

//---------------------------------------------------

/*
Minimum Perimeter of a Rectangle
*/

func minimumPerimeter(_ area: Int64) -> Int64 {
  var num = Int64(round(sqrt(Double(area)) ) )
  while area % num != 0 {
    num -= 1
  }
  return (area / num * 2) + num + num 
}

//---------------------------------------------------

/*
Fizz Buzz Cuckoo Clock
*/

func fizzBuzzCuckooClock(_ time: String) -> String {
  let num = time.split(separator: ":").map{Int($0)!}
  let cuckoo = num[0] == 0 ? 12 : num[0] > 12 ? num[0] - 12 : num[0]
  
  if num[1] == 0 {
    return String(repeating: "Cuckoo-", count: cuckoo).split(separator: "-").joined(separator: " ")
  } else if num[1] % 5 == 0 && num[1] % 3 == 0 {
    if num[1] == 30 {
       return "Cuckoo"
    } else {
       return  "Fizz Buzz"
    }
  } else if num[1] % 5 == 0 {
    return  "Buzz"
  } else if num[1] % 3 == 0 {
    return "Fizz"
  } else  {
    return "tick"
  }
}

//---------------------------------------------------

/*
Moves in squared strings (I)
*/

func horMirror(_ s: String) -> String {
    s.split(separator: "\n").reversed().joined(separator: "\n")
}
func vertMirror(_ s: String) -> String {
   s.split(separator: "\n").map{String($0.reversed())}.joined(separator: "\n")
}
 func oper(_ fct: (String) -> String ,_ s: String) -> String {
  return fct(s)
} 

//---------------------------------------------------

/*
Jumping Number (Special Numbers Series #4)
*/

func jumpingNumber(_ number: Int) -> String {
  let num = String(number).compactMap{$0.wholeNumberValue}
  for i in 1..<num.count {
   if  abs(num[i] - num[i - 1]) != 1 {
     return "Not!!"
   }
  }
  return "Jumping!!" 
}

//---------------------------------------------------

/*
Factorial
*/

func factorial(_ n: Int) -> UInt64 {
  UInt64((0...n).dropFirst().reduce(1, *))
}

//---------------------------------------------------

/*
Valid Parentheses
*/

func validParentheses(_ str: String) -> Bool {
  let dict = [")": "("]
  
  var stack = [String]()
    
    for i in str {
        if dict[String(i)] != nil { 
            if stack.isEmpty || stack.last != dict[String(i)] {
                return false
            } else {
                stack.removeLast()
            }
        } else { 
            stack.append(String(i))
        }
    }
    
    return stack.isEmpty
  
}

//---------------------------------------------------











//MARK: - 6kyu  ======================================

/*
Persistent Bugger.
*/

func persistence(for num: Int) -> Int {
  var arr = String(num).compactMap{$0.wholeNumberValue}.reduce(1, *)
  var count = 1
    if arr < 8 {
      return 0
    } else {
        while arr >= 9  {
            arr = String(arr).compactMap{$0.wholeNumberValue}.reduce(1, *)
            count += 1
      }
    }
   return count
}

//---------------------------------------------------

/*
Are they the "same"?
*/

func comp(_ a: [Int], _ b: [Int]) -> Bool {
  a.map{$0 * $0}.sorted(by: <) == b.sorted(by: <) ? true : false 
}

//---------------------------------------------------

/*
Valid Braces
*/

func validBraces(_ string:String) -> Bool {
  
  var stack = [Character]()
  let mapBrackets : [Character: Character] = ["}":"{", ")":"(", "]":"["]
  let openingBrackets = "([{"
      for i in string {
        if openingBrackets.contains(i) {
          stack.append(i) 
      } else if stack.last == mapBrackets[i] {
           stack.popLast()
      } else {
          return false
        }
 }
  return  stack.isEmpty 
}

//---------------------------------------------------

/*
Sum of Digits / Digital Root
*/

func digitalRoot(of number: Int) -> Int {
  var num = String(number).compactMap{$0.wholeNumberValue}
  var count = 0
  var sum = 0
  while count < 1 {
    sum += num.reduce(0, +)
    count += 1
  }
 return sum > 10 ?   String(sum).compactMap{$0.wholeNumberValue}.reduce(0, +) :  sum
}

//---------------------------------------------------

/*
Multiples of 3 or 5
*/

func solution(_ num: Int) -> Int {
  let number = num < 1 ? 3 : num
  let arr = [(1...number - 1).filter{ $0 % 5 == 0 } , (1...number - 1 ).filter{ $0 % 3 == 0 }]
  return Set(arr.flatMap{$0}).reduce(0, +)
}

//---------------------------------------------------

/*
CamelCase Method
*/

func camelCase(_ str: String) -> String {
  return  str.capitalized.replacingOccurrences(of: " " , with: "" )
}

//---------------------------------------------------

/*
Pyramid Array
*/

func pyramid(_ n: Int) -> [[Int]] {
  var arr = (0...n).map{ Array(repeating: 1, count: $0 + 1 ) }
  return n == 0 ? [] : arr.dropLast()
}

//---------------------------------------------------

/*
Write Number in Expanded Form
*/

func expandedForm(_ num: Int) -> String {
  let arr = String(num).compactMap{$0.wholeNumberValue}
  let expanded = arr.reversed().enumerated().map{ Double($1) * pow(10.0, Double($0)) }.reversed()  
  return expanded.map{Int($0)}.filter { $0 != 0 }.map{String($0)}.joined(separator: " + ")
}

//---------------------------------------------------

/*
Doors in the school
*/

func doors(_ n: Int) -> Int {
   Int( sqrt(Double(n)).rounded(.down)  )
}

//---------------------------------------------------

/*
Find The Parity Outlier
*/


func findOutlier(_ array: [Int]) -> Int {
  let even = array.filter { $0 % 2 == 0 }
  let odd = Array(Set(array).symmetricDifference(even))
  guard even.count > 1 else {return even[0]}
  
  return odd[0]
} 

//---------------------------------------------------

/*
Consecutive strings
*/

func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if strarr == [] || k > strarr.count || k == 0 {return  ""} 
    return (0...strarr.count - k).map{strarr[$0..<$0 + k].reduce("", +)}.max(by: {$0.count < $1.count})!
} 

//---------------------------------------------------

/*
Which are in?
*/

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
  var arr = [String]()
  for i in a1 {
     a2.map{$0.contains(i) ? arr.append(i) : arr.append("NIL")} 
  }
  return Array( Set(arr.filter{$0 != "NIL"}).sorted() )
} 

//---------------------------------------------------

/*
Stop gninnipS My sdroW!
*/

func spinWords(in sentence: String) -> String {
  sentence.components(separatedBy: " ").map{$0.count >= 5 ? String($0.reversed() ) : $0}.joined(separator:" ") 
} 

//---------------------------------------------------

/*
Bouncing Balls
*/

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int {
  if  h != 0 && bounce > 0 && bounce < 1 && window < h  {
    var count = 1
    var current = h * bounce
    
    while current > window {
      current *= bounce
      count += 2
    }
    return count
  } else {
      return -1 
  }

}

//---------------------------------------------------

/*
Bit Counting
*/

func countBits(_ n: Int) -> Int {
  var num = n
  var number = [Int]()
  while num != 0 {
      if num % 2 == 0 {
       number.append( 0 )
       num /= 2
      } else {
        number.append( 1 )
        num -= 1
      }
    }
  return number.filter{$0 == 1}.count
} 

//---------------------------------------------------

/*
Two Sum
*/

class Solution {
  static func twosum(numbers: [Double], target: Double) -> [Int] {
    var sum = 0
    var sum2 = 0
    for i in 0..<numbers.count {
      for j in i+1..<numbers.count {
        if numbers[Int(i)] + numbers[Int(j)] == target {
          sum = Int(i)
          sum2 = Int(j)
        }
      }
    }
   return [sum, sum2]
  }
}

//---------------------------------------------------

/*
Roman Numerals Encoder
*/

func solution(_ number:Int) -> String {
 let rom = [
   ["","I","II","III","IV","V","VI","VII","VIII","IX"],
   ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"],
   ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"],
   ["","M","MM","MMM"]
]
  return  rom[3][Int(number / 1000 % 10)] + rom[2][Int(number / 100 % 10)] + rom[1][Int(number / 10 % 10)] + rom[0][Int(number  % 10)]
}

//---------------------------------------------------

/*
RGB To Hex Conversion
*/

func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
  var arr = [r,g,b]
  var hexArr = [Int]()
  var hex = ""
    for i in arr {
    if i > 255 {
      hexArr.append(255)
    } else if i < 0 {
      hexArr.append(0)
    } else {
      hexArr.append(i)
    }
   }
  
    for i in hexArr {
     hex += String(format: "%02X", i)
    }
    return hex
} 

//---------------------------------------------------

/*
Give me a Diamond
*/

func diamond(_ size: Int) -> String? {
 guard size % 2 == 1 else { return nil}
  var str = ""
  let row = size / 2 + 1
  (1...size).map{let space = abs(row - $0); str += String(repeating: " ", count: space ) + String(repeating: "*", count: size - space * 2 ) + "\n"  }
  return str 
}

//---------------------------------------------------

/*
Encrypt this!
*/

func encryptThis(text:String) -> String{
  var solution = text.split(separator: " ").map {
    var wordArr = $0.map{String($0)}
    wordArr[0] = String(wordArr[0].unicodeScalars.first!.value) 
    if wordArr.count > 2 {
       wordArr.swapAt(1, wordArr.count-1)
      }
    return wordArr.joined()
  }.joined(separator: " ")
  return solution
}

//---------------------------------------------------

/*
1RM Calculator
*/

func calculate1RM(_ weight: Int, _ reps: Int) -> Int? {
  let eplay = Double(weight) * (1.0  + Double(reps) / 30.0)
  let mcGlothin = (Double(100) * Double(weight)) / (101.3 - 2.67123 * Double(reps) )
  let lombardi = Double(weight) * (pow(Double(reps), 0.10))
  
  let sum = [ round(Double(eplay)), round(Double(mcGlothin)), round(Double(lombardi)) ]

  if weight <= 1  && reps == 0 {
    return nil
  } else if reps == 1 {
    return weight
  } else {
   return Int(sum.max()!)
  }

}

//---------------------------------------------------

/*
Doubleton number
*/

func doubleton(_ num: Int) -> Int {
     var number = num + 1 
     while true {
        let digits = Set(String(number).map { Int(String($0))! }) 
        if digits.count == 2 { 
            return number 
        }
        number += 1 
    }
}

//---------------------------------------------------

/*
Playing with digits
*/

func digPow(for number: Int, using power: Int) -> Int {
  let num = String(number).compactMap{$0.wholeNumberValue}
  let powew = num.enumerated().map{pow(Double($1),Double($0 + power))}
  let sum = Int(powew.reduce(0, +))
 
  if sum % number > 1 {
    return -1
  } else {
    return sum / number
  }
}

//---------------------------------------------------

/*
Duplicate Encoder
*/

func duplicateEncode(_ word: String) -> String {
  let arr = word.lowercased()
  var str = [Character: Int]()
  
  for i in arr {
    if let count = str[i] {
      str[i] = count + 1
    } else {
      str[i] = 1 
    }
  }

  return arr.map{str[$0]! > 1 ? ")" : "("}.joined()
}

//---------------------------------------------------

/*
Mexican Wave
*/

func wave(_ y: String) -> [String] {
  var str = [String]()
  
  for (i, v) in y.enumerated() {
    if v == " " {continue}
    var wave = Array(y)
    wave[i] = Character(wave[i].uppercased())  
    str.append(String(wave))
  }
 
  return str
}

//---------------------------------------------------

/*
Tortoise racing
*/

func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
  guard v1 <= v2 else {return nil}
  let sum = g * 3600 / (v2 - v1 )
  let hours = sum / 3600
  let minutes = sum % 3600 / 60
  let seconds = sum % 60
  return [hours,minutes,seconds]
}

//---------------------------------------------------

/*
Rectangle into Squares
*/

func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
  guard lng != wdth else {return nil}
  
  var result = [Int]()
    var currentLength = lng
    var currentWidth = wdth
    while currentLength > 0, currentWidth > 0 {
        if currentLength < currentWidth {
            result.append(currentLength)
            currentWidth -= currentLength
        } else {
            result.append(currentWidth)
            currentLength -= currentWidth
        }
    }
    return result
}

//---------------------------------------------------

/*
Message Validator
*/

func isAValidMessage(_ message: String) -> Bool {
  var bool = true
  let str = message.components(separatedBy: CharacterSet.decimalDigits).filter{$0 != ""}
  let strFalse = message.components(separatedBy: CharacterSet.decimalDigits)
  let num = message.components(separatedBy: CharacterSet.decimalDigits.inverted).filter{$0 != ""}.map{Int($0)!}

  for i in 0..<str.count {
    if str.count != num.count  || strFalse[0] != "" || str[i].count != num[i] {
       bool = false
    } else {
        bool = true
    }
  }
  
  return bool
}

//---------------------------------------------------








//MARK: - 5kyu ======================================



/*
Is my friend cheating?
*/

func removNb(_ n: Int) -> [(Int,Int)] {
  let sum = (1...n).reduce(0, +) 
  var arr = [(Int,Int)]()

  for i in 1...n {
    let num = (sum - i) / (i + 1)
    if num < n && num * i == sum - num - i {
      arr.append((i, num))
    }
  }
  return arr
} 


//---------------------------------------------------

/*
Number of trailing zeros of N!
*/

func zeros(_ n: UInt32) -> UInt32 {
  var count = 0
  var int = 5
  while Int(n) / int >= 1 {
    count += Int(n) / int
    int *= 5
  }
    return UInt32(count )
}


//---------------------------------------------------

/*
Build Tower
*/

func towerBuilder(n:Int) -> [String] {
  let nums = (1...n*2).filter{$0 % 2 == 1}
  var arr = [String]()
  
  for i in nums {
    let spaces = String(repeating: " ", count: (n*2 - i) / 2)
    let stars = String(repeating: "*", count: i)
    arr.append(spaces + stars + spaces)
  }
  
  let maxStars = nums.last!
  let centeringSpaces = String(repeating: " ", count: (n*2 - maxStars) / 2)
  for i in 0..<n-1 {
    arr.insert(centeringSpaces + String(repeating: " ", count: i*2+1) + centeringSpaces, at: 0)
  }
  
  return arr.filter{$0.contains("*")}
}


//---------------------------------------------------


