//
//  IntExtension.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import Foundation

extension Int {

	func times(_ closure: () -> Void) {
		let i = abs(self)
		for _ in 0 ..< i {
			closure()
		}
	}
	
}
