import UIKit
import Foundation

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






//MARK: - 6kyu  ====================================

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









