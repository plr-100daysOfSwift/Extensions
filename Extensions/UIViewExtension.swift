//
//  UIViewExtension.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import Foundation
import UIKit

extension UIView {

	func bounceOut(withDuration duration: TimeInterval) {
		let delay = 2.0
		let scaleFactor: CGFloat = 0.001
		UIView.animate(withDuration: duration, delay: delay) { [unowned self] in
			self.transform = self.transform.scaledBy(x: scaleFactor, y: scaleFactor)
		}
	}

}
