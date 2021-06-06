//
//  ViewController.swift
//  Extensions
//
//  Created by Paul Richardson on 07/06/2021.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var blob: UIView!

	override func viewDidLoad() {
		super.viewDidLoad()

		blob = UIView()
		blob.backgroundColor = .red
		blob.layer.cornerRadius = 25.0
		blob.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(blob)

		let constraints = [
			blob.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
			blob.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
			blob.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
			blob.heightAnchor.constraint(equalTo: blob.widthAnchor, multiplier: 1)
		]
		NSLayoutConstraint.activate(constraints)

	}

}

