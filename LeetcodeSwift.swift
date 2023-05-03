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

/*
1773. Count Items Matching a Rule
*/

class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var count = 0
        items.map{
           if ruleKey == "type" && ruleValue == $0[0] {
               count += 1
           } else if ruleKey == "color" && ruleValue == $0[1] {
               count += 1
           } else if ruleKey == "name" && ruleValue == $0[2] {
               count += 1
           }
        }
        return count
    }
}

//---------------------------------------------------

/*
1791. Find Center of Star Graph
*/

class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        let numbers = edges.flatMap{$0}.sorted()
        let dups = Dictionary(grouping: numbers, by: {$0}).filter { $1.count > 1 }.keys
        return dups.compactMap { Int(String($0)) }[0]
    }
}

//---------------------------------------------------

/*
2520. Count the Digits That Divide a Number
*/

class Solution {
    func countDigits(_ num: Int) -> Int {
        let arr = String(num).compactMap{$0.wholeNumberValue}
        var count = 0
        for i in 0..<arr.count {
           let str = arr[i]
           if str != 0 && num % str == 0 {
               count += 1
           }
        }
        return count
    }
}

//---------------------------------------------------

/*
1688. Count of Matches in Tournament
*/

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        n - 1
    }
}

//---------------------------------------------------

/*
1323. Maximum 69 Number
*/

class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var result = num
        var nums = String(num).compactMap{$0.wholeNumberValue}
        for i in 0..<nums.count {
            if nums[i] == 6 {
                nums[i] = 9
                let n = Int(nums.map{String($0)}.joined(separator: ""))!
                if n > result {
                    result = n
                }
                nums[i] = 6
            }
        }
        return result
    }
}

//---------------------------------------------------

/*
557. Reverse Words in a String III
*/

class Solution {
    func reverseWords(_ s: String) -> String {
        s.components(separatedBy: " ").map{$0.reversed()}.map{String($0)}.joined(separator: " ")
    }
}

//---------------------------------------------------

/*
1464. Maximum Product of Two Elements in an Array
*/

class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { 
            return nums.map{$0 - 1}.reduce(1,*)
            }

        let max1 = nums.sorted(by: >)[0]
        let max2 = nums.sorted(by: >)[1]
        return (max1 - 1) * (max2 - 1)
    }
}

//---------------------------------------------------

/*
1281. Subtract the Product and Sum of Digits of an Integer
*/

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let multiplay = String(n).compactMap{$0.wholeNumberValue}.reduce(1,*)
        let sum = String(n).compactMap{$0.wholeNumberValue}.reduce(0,+)
        return multiplay - sum
    }
}

//---------------------------------------------------

/*
1389. Create Target Array in the Given Order
*/

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var arr = [Int]()
        for i in 0..<nums.count {
            arr.insert(nums[i], at: index[i])
        }
        return arr
    }
}

//---------------------------------------------------

/*
2418. Sort the People
*/

class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var dict: [Int: String] = [:]
        for i in 0..<names.count {
            dict[heights[i]] = names[i]
        }
        
        var result: [String] = [String]()
        for i in dict.keys.sorted(by: >) {
           result.append( dict[i]! )
        }
        return result
    }
}

//---------------------------------------------------

/*
2427. Number of Common Factors
*/

class Solution {
    func commonFactors(_ a: Int, _ b: Int) -> Int {
    var count = 0
    for i in 1...min(a,b) {
        if a % i == 0 && b % i == 0 {
            count += 1
        }
    }
    return count
    }
}

//---------------------------------------------------

/*
1768. Merge Strings Alternately
*/

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var str = [String]()
        
        let arrWord1 = Array(word1)
        let arrWord2 = Array(word2)
       
        for i in 0..<max(arrWord1.count, arrWord2.count) {
            if i < arrWord1.count {
                str.append(String(arrWord1[i]))
            }
            if i < arrWord2.count {
                str.append(String(arrWord2[i]))
            }
        }
        return str.joined(separator: "")
    }
}

//---------------------------------------------------

/*
1662. Check If Two String Arrays are Equivalent
*/

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        word1.reduce(" ", +) == word2.reduce(" ", +) ? true : false
    }
}

//---------------------------------------------------

/*
1662. Check If Two String Arrays are Equivalent
*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
       guard let root = root else { return 0 }

       var sum = 0
       if root.val >= low && root.val <= high {
           sum += root.val
       }

       if root.val > low {
           sum += rangeSumBST(root.left, low, high)
       }

       if root.val < high {
           sum += rangeSumBST(root.right, low, high)
       }
       
       return sum
    }
}

//---------------------------------------------------

/*
1528. Shuffle String
*/

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var dict: [Int: String] = [:]

        for i in 0..<indices.count {
            var str = Array(s)
            dict[indices[i]] = String(str[i])
        }
        
        let string = dict.sorted(by: {$0.0 < $1.0})
        let result = Array(string.map({ $0.value }) )

        return result.map { String($0) }.joined(separator: "")
    }
}

//---------------------------------------------------

/*
1816. Truncate Sentence
*/

class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var str = ""        
        let arrStr = s.components(separatedBy: " ")
        str = arrStr[0..<k].joined(separator: " ")

        return str
    }
}

//---------------------------------------------------

/*
804. Unique Morse Code Words
*/

class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        guard words.count >= 1 else { return 1 }
        
        let morse = ["a": ".-","b": "-...","c": "-.-.","d": "-..","e": ".","f": "..-.", "g": "--.", "h": "....","i": "..","j": ".---","k": "-.-", "l": ".-..","m": "--","n": "-.","o": "---","p": ".--.",
                        "q": "--.-","r": ".-.", "s": "...","t": "-", "u": "..-","v": "...-","w": ".--","x": "-..-","y": "-.--","z": "--.."
                     ]
        var arr = [String]()
        
        for i in words {
            var str = ""
            let array = Array(i)
            array.map{str += morse[String($0)]!}
            
            arr.append(str)
        }
        
        return Set(arr).count
    }
}

//---------------------------------------------------

/*
1436. Destination City
*/

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var outgoingCities = Set<String>()
        var destinationCity = ""

        for path in paths {
            outgoingCities.insert(path[0])
        }

       for path in paths {
            if !outgoingCities.contains(path[1]) {
                destinationCity = path[1]
                break
            }
        }
       
       return destinationCity
    }
}

//---------------------------------------------------

/*
20. Valid Parentheses
*/

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let compare: [Character: Character] = [")": "(", "]":"[", "}": "{"]

        for c in s {
            if compare.values.contains(c) {
                stack.append(c)
            } else if let expect = compare[c] {
                if stack.last == expect {
                    stack.removeLast()
                } else {
                    return false 
                }
            }
        } 
        return  stack.isEmpty 
    }
}

//---------------------------------------------------

/*
2037. Minimum Number of Moves to Seat Everyone
*/

class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
      return abs(students.reduce(0, +) - seats.reduce(0, +))
    }
}

//---------------------------------------------------

/*
1979. Find Greatest Common Divisor of Array
*/

class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        var maxNumber = nums.max( by: {$0 < $1} )! 
        var minNumber = nums.min( by: {$0 < $1} )!

        while minNumber != 0 {
            let result = maxNumber % minNumber
            maxNumber = minNumber
            minNumber = result
        }
        
        return maxNumber
    }
}

//---------------------------------------------------

/*
28. Find the Index of the First Occurrence in a String
*/

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let range = haystack.range(of: needle) else { return -1 }
        return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
    }
}

//---------------------------------------------------

/*
27. Remove Element
*/

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums.filter{ $0 != val}.count
    }
}

//---------------------------------------------------

/*
905. Sort Array By Parity
*/

class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var result = [Int]()

        result.append(contentsOf: nums.filter{$0 % 2 == 0})
        result.append(contentsOf: nums.filter{$0 % 2 != 0})
        
        return result 
    }
}

//---------------------------------------------------

/*
1460. Make Two Arrays Equal by Reversing Subarrays
*/

class Solution {
    func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
        target.sorted() == arr.sorted() ? true : false
    }
}

//---------------------------------------------------

/*
2057. Smallest Index With Equal Value
*/

class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        var num: Int!

        for (i,v) in nums.enumerated() {
            var mod = i % 10
            if mod == v {
                num = i
                break
            } else {
                num = -1
            }
        }

        return num
    }
}

//---------------------------------------------------

/*
977. Squares of a Sorted Array
*/

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        nums.map({
            Int(pow(Double($0), Double(2)))
        }).sorted()
    }
}

//---------------------------------------------------

/*
2651. Calculate Delayed Arrival Time
*/

class Solution {
    func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
        arrivalTime + delayedTime >= 24 ? arrivalTime + delayedTime - 24 : arrivalTime + delayedTime 
    }
}

//---------------------------------------------------

/*
704. Binary Search
*/

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.contains(target) else { return -1 }

        return nums.index(of: target)!
    }
}

//---------------------------------------------------

/*
50. Pow(x, n)
*/

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        pow(x, Double(n))
    }
}

//---------------------------------------------------

/*
1822. Sign of the Product of an Array
*/

class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        if nums.map{Double($0)}.reduce(1, *) > 0 {
            return 1
        } else if nums.map{Double($0)}.reduce(1, *) < 0 {
            return -1
        } else {
            return 0
        }
    }
}

//---------------------------------------------------

/*
2215. Find the Difference of Two Arrays
*/

class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
            let set1 = Set(nums1)
            let set2 = Set(nums2)

            let diff1 = set1.subtracting(set2)
            let diff2 = set2.subtracting(set1)

            let diff1Array = Array(diff1)
            let diff2Array = Array(diff2)

            let output = [diff1Array, diff2Array]
            
        return output
    }
}

//---------------------------------------------------
