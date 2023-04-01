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

/*
88. Merge Sorted Array
*/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        let arr1 = nums1[0..<m]
        let arr2 = nums2
        let result = arr1 + arr2
        nums1 = result.sorted(by: <)
    }
}

//---------------------------------------------------

/*
509. Fibonacci Number
*/

class Solution {
    func fib(_ n: Int) -> Int {
        if n == 0 {return 0}
        if n == 1 {return 1}
        return fib(n - 1) + fib(n - 2)
    }
}

//---------------------------------------------------

/*
709. To Lower Case
*/

class Solution {
    func toLowerCase(_ s: String) -> String {
        s.lowercased()
    }
}

//---------------------------------------------------

/*
2553. Separate the Digits in an Array
*/

class Solution {
    func separateDigits(_ nums: [Int]) -> [Int] {
        let result = nums.map{String($0).compactMap{$0.wholeNumberValue}}
        return result.flatMap{$0}
    }
}

//---------------------------------------------------

/*
2108. Find First Palindromic String in the Array
*/

class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for i in words {
            if i == String(i.reversed()) {
                return i
            }
        }
        return ""
    }
}

//---------------------------------------------------

/*
2185. Counting Words With a Given Prefix
*/

class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        var arr = [String]()
        for i in words {
           if i.hasPrefix(pref) {
                arr.append(i)
            }
        }
        return arr.count
    }
}

//---------------------------------------------------

/*
1108. Defanging an IP Address
*/

class Solution {
    func defangIPaddr(_ address: String) -> String {
        address.replacingOccurrences(of: "." , with: "[.]" ) 
    }
}

//---------------------------------------------------

/*
2469. Convert the Temperature
*/

class Solution {
    func convertTemperature(_ celsius: Double) -> [Double] {
        [celsius + 273.15, celsius * 1.80 + 32.00]
    }
}

//---------------------------------------------------

/*
2011. Final Value of Variable After Performing Operations
*/

class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var result = 0

        for num in operations {
            if num.contains("+") {
                result += 1
            } else {
                result -= 1
            }
        } 
        return result
    }
}

//---------------------------------------------------

/*
771. Jewels and Stones
*/

class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let j = Array(jewels)
        let s = Array(stones)
        var count = [Character]()
        for i in j {
           count += s.filter{$0 == i}
        }
        return count.count
    }
}

//---------------------------------------------------

/*
1470. Shuffle the Array
*/

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        guard n > 1 else {return nums}
        
        var newArr = [Int]()
        for i in 0..<n {
            newArr.append(nums[i])
            newArr.append(nums[i+n])
        }
          
        return newArr
       
    }
}

//---------------------------------------------------

/*
2114. Maximum Number of Words Found in Sentences
*/

class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var count = [Int]()
        
        for word in sentences {
            var sentence = word.components(separatedBy: " ").count
            count.append(sentence)
        }
       
        return count.max() ?? 1
    }
}

//---------------------------------------------------

/*
1480. Running Sum of 1d Array
*/

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = [Int]()

        for i in 1..<nums.count {
           result.append(nums[0..<i].reduce(0, +))
        }
        result.append(nums.reduce(0,+))
        
        return result
    }
}

//---------------------------------------------------

/*
2535. Difference Between Element Sum and Digit Sum of an Array
*/

class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        let sumArray = nums.reduce(0, +)
        var digit = nums.map{String($0).compactMap{$0.wholeNumberValue}}.flatMap{$0}.reduce(0,+)
        return sumArray - digit
    }
}

//---------------------------------------------------

/*
1859. Sorting the Sentence
*/

class Solution {
    func sortSentence(_ s: String) -> String {
      var arr = [String](repeating: "", count: 9)
        let str = s.components(separatedBy: " ")
        for i in 0..<str.count {
            let word = str[i]
            let index = Int(String(word.last!))! - 1
            arr[index] = String(word.dropLast())
        }
        return arr.joined(separator: " ").trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//---------------------------------------------------

/*
1929. Concatenation of Array
*/

class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        nums + nums
    }
}

//---------------------------------------------------

/*
1920. Build Array from Permutation
*/

class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        nums.enumerated().map{nums[$1]}
    }
}

//---------------------------------------------------

/*
1512. Number of Good Pairs
*/

class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] == nums[j] {
                    count += 1
                }
            }
        }
        return count
    }
}

//---------------------------------------------------

/*
2413. Smallest Even Multiple
*/

class Solution {
    func smallestEvenMultiple(_ n: Int) -> Int {
        n % 2 == 0 ? n : n * 2
    }
}

//---------------------------------------------------

/*
2413. Smallest Even Multiple
*/

class Solution {
    func interpret(_ command: String) -> String {
      var s = ""
        var i = command.startIndex
        
        while i < command.endIndex {
            if command[i] == "G" {
                s.append("G")
                i = command.index(after: i)
            } else if command[i...].starts(with: "()") {
                s.append("o")
                i = command.index(i, offsetBy: 2)
            } else if command[i...].starts(with: "(al)") {
                s.append("al")
                i = command.index(i, offsetBy: 4)
            } else {
                i = command.index(after: i)
            }
        }
        
        return s
    }
}

//---------------------------------------------------

/*
1431. Kids With the Greatest Number of Candies
*/

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var arr = [Bool]()
         var num = candies.max()!
            candies.map{
                 if $0 + extraCandies >= num {
                     arr.append(true)
                 } else {
                     arr.append(false)
                 }
            }
        return arr
    }
}

//---------------------------------------------------


















