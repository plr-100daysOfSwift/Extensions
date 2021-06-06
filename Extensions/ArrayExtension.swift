//
//  ArrayExtension.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import Foundation

extension Array where Element: Comparable {

	mutating func remove(item: Any) {
		if let index = self.firstIndex(where: { element in
			element == item as! Element
		}) {
			self.remove(at: index)
		}
	}
}
