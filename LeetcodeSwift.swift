"""
Leetcode solutions
"""

/// Easy 

/*
// 412. Fizz Buzz
*/

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var newArr = Array(0...n).map{String($0)}
            for i in (1..<newArr.count ) {
                if i % 5 == 0 && i % 3 == 0 {
                    newArr[i] = "FizzBuzz"
                } else if i % 5 == 0 {
                    newArr[i] = "Buzz"
                } else if  i % 3 == 0 {
                    newArr[i] = "Fizz"
                } 
            }
            newArr.removeFirst(1)
            return newArr

    }
}

//--------------------------------------

/*
// 1672. Richest Customer Wealth
*/

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map({$0.reduce(0, +)}).max()!
    }
}

//--------------------------------------

/*
1342. Number of Steps to Reduce a Number to Zero
*/

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var count = 0
        var n = num
        while n != 0 {
            if n % 2 == 0 {
                n /= 2
                count += 1
            } else {
                n -= 1
                count += 1
            }
        }
        return count
    }
}

//---------------------------------------------------

/*
58. Length of Last Word
*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let strArr = s.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: " ")
        return strArr[strArr.count - 1].count

    }
}

//---------------------------------------------------

/*
35. Search Insert Position
*/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard let n = nums.index(of:  target) else {
            let result = nums.filter { $0 < target }.count
            return result
        }
        return n
    }
}

//---------------------------------------------------

/*
9. Palindrome Number
*/

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {return false}
        let rev = String(x).compactMap({$0.wholeNumberValue}).reversed() 
        let new = Int( rev.map { String($0) }.joined(separator: "") )
        if x == new {
            return true
        } else {
            return false
        }
        return true
    }
}

//---------------------------------------------------

/*
136. Single Number
*/

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        guard nums.count >= 1 else {return nums[0]}
        var num = 0
        nums.map{num ^= $0}
        return num
    }
}

//---------------------------------------------------

/*
217. Contains Duplicate
*/

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
      var set = Set(nums)
        if nums.count > set.count {
            return true
        }
      return false
    }
}

//---------------------------------------------------

/*
191. Number of 1 Bits
*/

class Solution {
    func hammingWeight(_ n: Int) -> Int {
       let str = String(n, radix: 2)
       return Array(str).filter({$0 == "1"}).count 
    }
}

//---------------------------------------------------

/*
242. Valid Anagram
*/

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        Array(s).sorted() == Array(t).sorted() ? true : false 
    }
}

//---------------------------------------------------

/*
258. Add Digits
*/

class Solution {
    func addDigits(_ num: Int) -> Int {
        guard num > 9 else { return num }
        var sum = num

        while sum >= 10 {
            var arr = String(sum).compactMap({$0.wholeNumberValue}).reduce(0, +)
            if arr > 10 {
                sum = arr
            } else {
                sum = arr
            }
        } 
        return sum
    }
}

//---------------------------------------------------

/*
283. Move Zeroes
*/

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        if nums.count > 1 {nums}
        var filt = nums.filter{$0 == 0}
        var newArr = nums.filter{$0 != 0}
        filt.map({newArr.append($0)})
        nums = newArr
    }
}

//---------------------------------------------------

/*
342. Power of Four
*/

class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
       guard n > 0 else {return false}

       var num = n
       while num > 1 {
           if num % 4 != 0 {
               return false
           }
           num /= 4
       }
        return  true
    }
}

//---------------------------------------------------

/*
520. Detect Capital
*/

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var wCap = word.capitalized
        var wUp = word.uppercased()
        var wLow = word.lowercased()
        if wCap == word || wUp == word || wLow == word {
            return true
        }
        return false 
    }
}

//---------------------------------------------------




