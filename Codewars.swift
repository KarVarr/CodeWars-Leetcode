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

func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
   w0 * (100 - p0) / (100 - p1) 
}

//---------------------------------------------------


