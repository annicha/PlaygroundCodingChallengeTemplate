//: [Previous](@previous)
/*:
# Topic
### Question

Explaination
*/

/*: ### Sample Input and Output */
// Input
[1,2,3]

// Output
1

/*:
## Solution
*/
enum CustomError: Error, CustomStringConvertible {
	case EmptyArray

	var description: String {
		switch self {
		case .EmptyArray: return "Array is unexpectedly empty."
		}
	}
}

func findSolution(_ items: [Int]) throws -> Int {
	guard items.count > 0 else {
		throw CustomError.EmptyArray
	}
	
	// solution here
	
	return 0
}


import XCTest


class CustomTestCase: XCTestCase {
	
	func test_empty_array(){
		let input: [Int] = []
		do {
			try findSolution(input)
			XCTFail("\n\t❌ Empty array should throw error.")
		} catch {
			XCTAssert(true)
		}
	}
	
	func test_case_1(){
		let input: [Int] = [1]
		do {
			let solution = try findSolution(input)
			XCTAssert(solution == 0, "\n\t❌ Fail with unexpected value.")
		} catch {
			XCTFail("\n\t❌ \(error).")
		}
	}
}

CustomTestCase.defaultTestSuite.run()
//: [Next](@next)
