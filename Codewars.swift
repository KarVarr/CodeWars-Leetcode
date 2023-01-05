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

