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

/*
2652. Sum Multiples
*/

class Solution {
    func sumOfMultiples(_ n: Int) -> Int {
        var result = [Int]()
        var sum = (1...n)
        let nums = [3,5,7]

        for i in nums {
            result.append(contentsOf: sum.filter{$0 % i == 0})
        }
        print(result)
        return Set(result).reduce(0, +)
    }
}

//---------------------------------------------------

/*
2656. Maximum Sum With Exactly K Elements 
*/

class Solution {
    func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in 0..<k {
           result += nums.max()! + i
        }
        return result
    }
}

//---------------------------------------------------

/*
1812. Determine Color of a Chessboard Square
*/

class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        var result = true
        let black: [Character] = ["a", "c", "e", "g"]
        let black2: [Character] = ["b", "d", "f", "h"]
        let nums = (1..<9)

        let arr = Array(coordinates)
        let num = Int(String(arr[1]))!
        let char = arr[0]

        if (num % 2 == 1 && black.contains(char)) || (num % 2 == 0 && black2.contains(char)) {
            result = false
        }

        return result
    }
}

//---------------------------------------------------

/*
1812. Determine Color of a Chessboard Square
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }

        var prev: ListNode? = nil
        var curr = head

        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }

        return prev
    }
}

//---------------------------------------------------

/*
24. Swap Nodes in Pairs
*/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func swapPairs(_ head: ListNode?) -> ListNode? {
    guard let head = head, let next = head.next else { return head }
    
    let newHead = next
    head.next = swapPairs(next.next)
    newHead.next = head
    
    return newHead
    }
}

//---------------------------------------------------

/*
2000. Reverse Prefix of Word
*/

class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        guard word.contains(ch) else {return word}

        let words = Array(word)
        if let index = words.index(of: ch) {
            let str = words[0...index].map { String($0) }.joined(separator: "").reversed()
        
            let restOfWord = words[index+1..<words.count]
        
            let result = str + restOfWord
            print(result.map { String($0) }.joined(separator: ""))
            return result.map { String($0) }.joined(separator: "")
        }
        
        return word
    }
}

//---------------------------------------------------

/*
500. Keyboard Row
*/

class Solution {
    func findWords(_ words: [String]) -> [String] {
        let keyboardRows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
        
        let result = words.filter { word in
            let lowercaseWord = word.lowercased()
            return keyboardRows.contains { row in
                lowercaseWord.allSatisfy { row.contains($0) }
            }
        }
        
        return result
    }
}

//---------------------------------------------------

/*
2119. A Number After a Double Reversal
*/

class Solution {
    
    func isSameAfterReversals(_ num: Int) -> Bool {
        let revers1 = revers(num)
        let revers2 = revers(revers1)

        return num == revers2
    }

    private func revers(_ n: Int) -> Int {
        var number = n
        var revNum = 0

        while number != 0 {
            revNum = revNum * 10 + number % 10
            number /= 10
        }

        return revNum
    }
}

//---------------------------------------------------

/*
338. Counting Bits
*/

class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [String]()

        for i in 0...n {
            result.append(String(i, radix: 2))
        }

        return result.map{$0.compactMap{$0.wholeNumberValue}.reduce(0, +)}
    }
}

//---------------------------------------------------

/*
1025. Divisor Game
*/

class Solution {
    func divisorGame(_ n: Int) -> Bool {
        n % 2 == 0 ? true : false 
    }
}

//---------------------------------------------------

/*
263. Ugly Number
*/

class Solution {
    func isUgly(_ n: Int) -> Bool {
        guard n > 0 else { return false }

        var num = n
        while num % 2 == 0 {
            num /= 2
        }
        while num % 3 == 0 {
            num /= 3
        }
        while num % 5 == 0 {
            num /= 5
        }

        return num == 1
    }
}

//---------------------------------------------------

/*
326. Power of Three
*/

class Solution {
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var x = 0
        while Int(pow(3, Double(x))) <= n {
            if Int(pow(3, Double(x))) == n {
                return true
            }
            x += 1
        }
        return false
    }
}

//---------------------------------------------------

/*
2032. Two Out of Three
*/

class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var result = [cont(nums1, nums2), cont(nums2, nums3), cont(nums3, nums1)]

        return Array(Set(result.flatMap{$0}))
    }

    func cont(_ arr: [Int], _ nums: [Int]) -> [Int] {
        var result = [Int]()
        for i in arr {
            if nums.contains(i) {
                result.append(i)
            }
        }
        return  result
    }
}

//---------------------------------------------------

/*
2562. Find the Array Concatenation Value
*/

class Solution {
    func findTheArrayConcVal(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0]}
        var result = 0
        var arr = nums

        while arr.count > 1 {
            var num: Int
            if arr.count % 2 == 0 {
                var str = [arr[0], arr[arr.count - 1]]
                result += Int(str.map { String($0) }.joined(separator: "")) ?? 0
                arr.remove(at: 0)
                arr.remove(at: arr.count - 1)
            } else {
                
                var str = [arr[0], arr[arr.count - 1]]
                result += Int(str.map { String($0) }.joined(separator: "")) ?? 0
                arr.remove(at: 0)
                arr.remove(at: arr.count - 1)
                if arr.count == 1 {
                    result += arr[0]
                }
            }
            
        }

        return result
    }
}

//---------------------------------------------------

/*
2544. Alternating Digit Sum
*/

class Solution {
    func alternateDigitSum(_ n: Int) -> Int {
        let strNum = String(n).compactMap{$0.wholeNumberValue} 
        var odd = [Int]()
        var even = [Int]()

        for (i, val) in strNum.enumerated() {
            if i % 2 == 0 {
                odd.append(val)
            } else {
                even.append(val)
            }
        }

        return odd.reduce(0, +) - even.reduce(0, +)
    }
}

//---------------------------------------------------

/*
2042. Check if Numbers Are Ascending in a Sentence
*/

class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
       
        let string = s
        let stringArray = string.components(separatedBy: CharacterSet.decimalDigits.inverted)
        var result = [Int]()

        for item in stringArray {
            if let number = Int(item) {
                result.append(number)
            }
        }


        for i in 1..<result.count {
            if result[i] < result[i - 1] || result[i] == result[i - 1]{
                return false 
            }
        }

        return true 
    }
}

//---------------------------------------------------

/*
1185. Day of the Week
*/

class Solution {
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        let gregorianCalendar = Calendar(identifier: .gregorian)
        let dateComponents = DateComponents(calendar: gregorianCalendar, year: year, month: month, day: day)

        let weekDay = gregorianCalendar.component(.weekday, from: gregorianCalendar.date(from: dateComponents)! )

        switch weekDay {
            case 1 : return "Sunday"
            case 2 : return "Monday"
            case 3 : return "Tuesday"
            case 4 : return "Wednesday"
            case 5 : return "Thursday"
            case 6 : return "Friday"
            case 7 : return "Saturday"
            default: break
        }
        return "Sunday"
    }
}

//---------------------------------------------------

/*
268. Missing Number
*/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let range = Array(0...nums.count)
        return Array(Set(nums).symmetricDifference(range)).first!
    }
}

//---------------------------------------------------

/*
1009. Complement of Base 10 Integer
*/

class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
        let binary = String(n, radix: 2)
        var result = ""

        for i in binary {
            if i == "1" {
                result.append("0")
            } else {
                result.append("1")
            }
        }
        
        return Int(result, radix: 2)!
    }
}

//---------------------------------------------------

/*
1903. Largest Odd Number in String
*/

class Solution {
    func largestOddNumber(_ num: String) -> String {
        var result = ""
        
        if let lastOddIndex = num.lastIndex(where: { $0.isOddDigit }) {
            result = String(num[...lastOddIndex])
        }
        
        return result
    }
}

extension Character {
    var isOddDigit: Bool {
        guard let digit = self.wholeNumberValue else {
            return false
        }
        return digit % 2 != 0
    }
}


//---------------------------------------------------

/*
168. Excel Sheet Column Title
*/

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var number = columnNumber
    
        while number > 0 {
            let code = UnicodeScalar((number - 1) % 26 + Int(("A" as UnicodeScalar).value))
            result = String(code!) + result
            number = (number - 1) / 26
        }
    
        return result
    }
}

//---------------------------------------------------

/*
125. Valid Palindrome
*/

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        guard s != " " else { return true}
        let newStr = s.replacingOccurrences(of: "[\\s \\p{P} `;?]", with: "", options: .regularExpression).lowercased()
        let reversStr = newStr.reversed()
        return newStr == String(reversStr)
    }
}

//---------------------------------------------------

/*
1154. Day of the Year
*/

class Solution {
    func dayOfYear(_ date: String) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        guard let newDate = dateFormatter.date(from: date) else {
            return -1 
        }

        let cal = Calendar.current
        let day = cal.ordinality(of: .day, in: .year, for: newDate)

        return day ?? -1 
    }
}

//---------------------------------------------------

/*
26. Remove Duplicates from Sorted Array
*/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
}

//---------------------------------------------------

/*
2529. Maximum Count of Positive Integer and Negative Integer
*/

class Solution {
    func maximumCount(_ nums: [Int]) -> Int {
        var neg = [Int]()
        var pos = [Int]()

        for i in nums {
            if i >= 1 {
                pos.append(i)
            } else if i <= -1 {
                neg.append(i)
            }
        }

        return [neg.count, pos.count].max()!
    }
}

//---------------------------------------------------

/*
922. Sort Array By Parity II
*/

class Solution {
    func sortArrayByParityII(_ nums: [Int]) -> [Int] {
        
        var result = Array(repeating: 0, count: nums.count)
        var odd = 1
        var even = 0

        for i in nums {
            if i % 2 == 0 {
                result[even] = i
                even += 2
            } else if i % 2 == 1{
                result[odd] = i
                odd += 2
            }
        }
        
        return result
    }
}

//---------------------------------------------------

/*
476. Number Complement
*/

class Solution {
    func findComplement(_ num: Int) -> Int {
        
        var result = 0

        var binary = String(num, radix: 2)
        var n = ""

        for i in binary {
            if i == "1" {
                n += "0"
            } else if i == "0" {
                n += "1"
            }
        }

        if let res = Int(n, radix: 2) {
            result = res
        }
        

        return result
    }
}

//---------------------------------------------------

/*
1952. Three Divisors
*/

class Solution {
    func isThree(_ n: Int) -> Bool {
        var result = 0
        let arr = Array(1...n)
        for i in arr {
            if n % i == 0 {
                result += 1
            }
        }
        
        return result == 3
    }
}

//---------------------------------------------------

/*
448. Find All Numbers Disappeared in an Array
*/

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let newArr = Array(1...nums.count)
        let diff = Array(Set(nums).symmetricDifference(newArr))
        return diff.sorted()
    }
}

//---------------------------------------------------

/*
292. Nim Game
*/

class Solution {
    func canWinNim(_ n: Int) -> Bool {
        n % 4 != 0
    }
}

//---------------------------------------------------

/*
1832. Check if the Sentence Is Pangram
*/

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        Set(sentence).count == 26
    }
}

//---------------------------------------------------
