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
