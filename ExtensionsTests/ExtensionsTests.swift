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

	override func setUpWithError() throws {
	}

	override func tearDownWithError() throws {
	}

	func testInt_WhenTimesCalled_ClosureIsRunIntTimes() {

		var myArray = [String]()
		let element = "foo"
		3.times {
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
