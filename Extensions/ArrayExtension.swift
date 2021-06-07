//
//  ArrayExtension.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import Foundation

extension Array where Element: Comparable {

	mutating func remove(item: Element) {
		if let index = self.firstIndex(of: item) {
			self.remove(at: index)
		}
	}
}
