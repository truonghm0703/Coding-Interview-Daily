//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
//
//Example 1:
//
//Input: 121
//Output: true
//Example 2:
//
//Input: -121
//Output: false
//Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

func isPalindrome(_ x: Int) -> Bool {
       let xStringArray = Array(String(x))
       let length = xStringArray.count
       for i in 0..<length/2 {
           if xStringArray[i] != xStringArray[length - i - 1] {
               return false
           }
       }
       return true
   }
