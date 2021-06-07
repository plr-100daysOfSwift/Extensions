//
//  ExtensionsTests.swift
//  ExtensionsTests
//
//  Created by Paul Richardson on 07/06/2021.
//

import XCTest
import Foundation
@testable import Extensions

class ExtensionsTests: XCTestCase {

	var myArray: [String]!
	var element: String!

	override func setUpWithError() throws {
		myArray = [String]()
		element = "foo"
	}

	override func tearDownWithError() throws {
		myArray = nil
		element = nil
	}

	func testInt_WhenTimesCalled_ClosureIsRunIntTimes() {

		3.times {
			myArray.append(element)
		}

		XCTAssertEqual(myArray, [element, element, element])

	}

	func testInt_WhenIntIsNegative_ClosureIsRunPositiveIntTimes() {

		let int: Int = -3
		int.times {
			myArray.append(element)
		}

		XCTAssertEqual(myArray, [element, element, element])

	}

	func testArray_WhenRemoveCalled_FirstInstanceOfElementIsRemoved() {

		let element1 = "foo"
		let element2 = "bar"
		var myArray = [element1, element2, element1]
		myArray.remove(item: element1)

		XCTAssertEqual(myArray, [element2, element1])
		XCTAssertNotEqual(myArray, [element1, element2])

	}

}
