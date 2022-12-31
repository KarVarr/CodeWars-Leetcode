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







//MARK: - 6kyu

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

