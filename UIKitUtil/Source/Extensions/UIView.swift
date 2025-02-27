import UIKit

public extension UIView {
    func centeredConstraints (in view: UIView) -> [NSLayoutConstraint] {
        [
            centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ]
    }

    func pinBoundsConstraints (to view: UIView) -> [NSLayoutConstraint] {
        [
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
    }
}

public extension UIView {
	func squared () {
        aspectRatio(1)
	}

	func aspectRatio (_ value: Double) {
		widthAnchor.constraint(equalTo: heightAnchor, multiplier: value).isActive = true
	}

	func centered (in view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(centeredConstraints(in: view))
	}

	func pinBounds (to view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(pinBoundsConstraints(to: view))
	}

	func insertFullframe (_ view: UIView, at index: Int? = nil) {
		if let index = index {
			insertSubview(view, at: index)
		} else {
			addSubview(view)
		}

		view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(pinBoundsConstraints(to: view))
	}
}
