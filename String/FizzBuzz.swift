/**
 * Question Link: https://leetcode.com/problems/fizz-buzz/
 * Primary idea: Iterate the array and handle multiples of 3 or 5 separately.
 *
 * Time Complexity: O(n), Space Complexity: O(1)
 *
 */

class FizzBuzz {
    func fizzBuzz(_ n: Int) -> [String] {
      var output = [String]()
    
    // Expected
    
    /* Given:
     cases:
     1. Multiple of 3 -> "Fizz"
     2. Multiple of 5 -> "Buzz"
     3. Multiple of 15 -> "FizzBuzz"
     4  default -> number
     */
    
    for eachNumber in 1...n {
        switch true {
        case eachNumber.isMultiple(of:15):
            output.append("FizzBuzz")
            
        case eachNumber.isMultiple(of:5):
            output.append("Buzz")
            
        case eachNumber.isMultiple(of: 3):
            output.append("Fizz")
            
        default:
            output.append("\(eachNumber)")
        }
    }
    
    return output
    }
}
