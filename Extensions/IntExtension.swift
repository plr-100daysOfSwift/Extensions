//
//  IntExtension.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import Foundation

extension Int {

	func times(_ closure: () -> ()) {
		var i = self
		repeat {
			closure()
			i -= 1
		} while i > 0
	}
	
}
